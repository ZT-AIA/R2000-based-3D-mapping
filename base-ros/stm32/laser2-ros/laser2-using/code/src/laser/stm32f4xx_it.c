#include "dev.h"
#include "dev_conf.h"
#include "msg_handler.h"

void SysTick_Handler(void)
{
	/* LocalTime is used to create time reference
	   incremented by OS_TICK_PERIOD(1000/TICKS_PER_SEC) */
	extern volatile uint32_t LocalTime;
	LocalTime += (1000/TICKS_PER_SEC);
}

/*
 *********************************************************
 *	Des. USART1 Rx Interrupt
 *	1.Frame format : (0x8X + 0xXX) + 0xXX
 *  2.Buffer Management
 *********************************************************
 */
void USART1_IRQHandler(void)
{
	static uint16_t ar_recv[4], recv_index;
	static uint32_t h_pls, v_pls;
	static uint32_t check_mask,TIM2_CNT,TIM2_CNT_T;
	struct point_type point;
	uint16_t uart_data;
	
	uart_data = USART1->DR & 0x00ffu;
	if(sys_status.Scanning == False || sys_status.Scan_Overrun == True)
	{
		recv_index = 3;
		TIM2_CNT = TIM2_CNT_T = 0;
		check_mask = 0;
		return;
	}
	
	if(uart_data & 0x0080)
		recv_index = 0;
	else
		recv_index++;
	/* Prevent illegal access */
	recv_index = (recv_index > 3)? 3 : recv_index;
	ar_recv[recv_index] = uart_data & 0x007f;
	
	if(recv_index == 0)
	{
		/*------------------------------------------------------
		 *Prevent dirty data & Cover the shortage of hardware */
		if(!check_mask)
		{
			if(TIM2->CNT != TIM2_CNT_T)
			{
				TIM2_CNT++;
				check_mask = 5000;
				if(TIM3->CNT > 32768u)
				{
					recv_index = 3;
					return;
				}
			}
		}
		else
		{
			check_mask--;
			if(TIM3->CNT > 32768u)
			{
				recv_index = 3;
				return;
			}
		}
		TIM2_CNT_T = TIM2->CNT;
		/* A software solution like monostable flip-flop 
		 ------------------------------------------------------*/
		
		v_pls = (TIM4->CNT + TIM5->CNT*65536uL) % V_PLS_NUM_1_4;
		h_pls = TIM3->CNT + TIM2_CNT*65536uL;
		if(v_pls < V_PLS_NUM_VIEW_U || v_pls > V_PLS_NUM_VIEW_D)
		{
			recv_index = 3;
			return;
		}
		if(h_pls > H_PLS_NUM) // scan scales
		{
			sys_status.Scan_Overrun = True;
			return;
		}
	}
	if(recv_index == 2)
	{
		if(PMsg_Buf.index == P_MSG_SIZE)
		{
			if((PMsg_Buf.rear + 1)%P_MSG_NUM != PMsg_Buf.front) // Buffer Not Full?
			{
				PMsg_Buf.index = 0;
				PMsg_Buf.rear = (PMsg_Buf.rear + 1)%P_MSG_NUM;
			}
			else
			{
				PMsg_Buf.err_info++;
				return;
			}
			GPIO_ToggleBits(GPIOD, GPIO_Pin_0);
		}
		point.distance = (ar_recv[0]*128uL + ar_recv[1])/100.0f;
		point.vertical_angle = v_pls*360.0f / V_PLS_NUM;
		point.horizontal_angle = h_pls*360.0f / H_PLS_NUM;
		point.reflectance = ar_recv[2]*2.0f;
		PMsg_Buf.msg[PMsg_Buf.rear].point[PMsg_Buf.index] = point;
		PMsg_Buf.index++;
	}
}

/* Navigation message receive handler */
void USART3_IRQHandler(void)
{
	static int16_t tim3_cnt, tim4_cnt;
	uint16_t uart_data;
	uart_data = USART3->DR & 0x00ffu; // Do not put this line at the last line!!! 
	
	if(TIM7->CNT < INTERFRAME_GAP)
	{
		if(HNMsg_Buf.index >= H_NAV_MSG_SIZE)
			HNMsg_Buf.index = H_NAV_MSG_SIZE - 1;
		HNMsg_Buf.msg[HNMsg_Buf.rear].hybrid_nav_data[HNMsg_Buf.index++] = uart_data;
	}
	else
	{
		if((HNMsg_Buf.rear + 1)%H_NAV_MSG_NUM != HNMsg_Buf.front) // Buffer Not Full?
		{
			HNMsg_Buf.index = 0;
			HNMsg_Buf.rear = (HNMsg_Buf.rear + 1)%H_NAV_MSG_NUM;
		}
		else
		{
			/* overflow here */
			HNMsg_Buf.err_info++;
		}
		HNMsg_Buf.msg[HNMsg_Buf.rear].left_position =  (int16_t)TIM3->CNT - tim3_cnt;
		HNMsg_Buf.msg[HNMsg_Buf.rear].right_position = (int16_t)TIM4->CNT - tim4_cnt;
		if(HNMsg_Buf.index >= H_NAV_MSG_SIZE)
			HNMsg_Buf.index = H_NAV_MSG_SIZE - 1;
		HNMsg_Buf.msg[HNMsg_Buf.rear].hybrid_nav_data[HNMsg_Buf.index++] = uart_data;
		tim3_cnt = TIM3->CNT;
		tim4_cnt = TIM4->CNT;
	}
	TIM7->CNT = 0;
	//TIM_SelectOnePulseMode(TIM7, TIM_OPMode_Single);
	//TIM_Cmd(TIM7, ENABLE);
	/*
	if(NMsg_Buf.index == NAV_MSG_SIZE)
	{
		if((NMsg_Buf.rear + 1)%NAV_MSG_NUM != NMsg_Buf.front) // Buffer Not Full?
		{
			NMsg_Buf.index = 0;
			NMsg_Buf.rear = (NMsg_Buf.rear + 1)%NAV_MSG_NUM;
		}
		else
		{
			// overflow here 
			NMsg_Buf.err_info++;
			return;	
		}
	}
	NMsg_Buf.msg[NMsg_Buf.rear].nav_data[NMsg_Buf.index] = uart_data;
	NMsg_Buf.index++;
	*/
}

void EXTI3_IRQHandler(void)
{
	EXTI_ClearITPendingBit(EXTI_Line3);
	if(sys_status.Scan_Reset == True)
	{
		StepMotor_Stop(StepMotor_CH1);
		StepMotor_SpeedSet(StepMotor_CH1, motor_spd.h_spd);
		GPIO_ResetBits(GPIOD, GPIO_Pin_0);  // default direction
		GPIO_ResetBits(GPIOD, GPIO_Pin_11);
		sys_status.Scan_Reset = False;
	}
}
void EXTI15_10_IRQHandler(void)
{
	EXTI_ClearITPendingBit(EXTI_Line14);
	TIM4->CNT = 0;
	TIM5->CNT = 0;
}
