/**
  ******************************************************************************
  * @file    stm32f4xx_it.c 
  * @author  MCD Application Team
  * @version V1.0.0
  * @date    31-October-2011
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and 
  *          peripherals interrupt service routine.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; Portions COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */
/**
  ******************************************************************************
  * <h2><center>&copy; Portions COPYRIGHT 2012 Embest Tech. Co., Ltd.</center></h2>
  * @file    stm32f4xx_it.c
  * @author  CMP Team
  * @version V1.0.0
  * @date    28-December-2012
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and 
  *          peripherals interrupt service routine.  
  *          Modified to support the STM32F4DISCOVERY, STM32F4DIS-BB and
  *          STM32F4DIS-LCD modules. 
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, Embest SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
  * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE CONTENT
  * OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING INFORMATION
  * CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_it.h"
#include "stm32f4xx_tim.h"
#include "stm32f4x7_eth.h"
#include "navigation.h"
#include "dev_conf.h"
//#include "dm9000.h"
#include "main.h"
//#include "dm9000_ethernetif.h"
//#include "dm9000_lwip_comm.h"
#include "laserCloud.h"

/* RTOS includes */
#include "cmsis_os.h"

/* lwIP includes */
#include "lwip/sys.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
extern sys_sem_t s_xRxSemaphore;

extern __IO uint8_t EthLinkStatus;
/* Private function prototypes -----------------------------------------------*/
extern void xPortSysTickHandler(void); 
/* Private functions ---------------------------------------------------------*/

extern struct sys_status sysStatus;//零位信号的处理
extern int curPluseCnt;
extern int lastPluseCnt;
extern int16_t time3Cnt;

/******************************************************************************/
/*            Cortex-M4 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief   This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles ethernet DMA interrupt request.
  * @param  None
  * @retval None
  */
void ETH_IRQHandler(void)
{
  /* Frame received */
  if (ETH_GetDMAFlagStatus(ETH_DMA_FLAG_R) == SET) 
  {
    /* Give the semaphore to wakeup LwIP task */
		sys_sem_signal(&s_xRxSemaphore);
  }
	
  /* Clear the interrupt flags. */
  /* Clear the Eth DMA Rx IT pending bits */
  ETH_DMAClearITPendingBit(ETH_DMA_IT_R);
  ETH_DMAClearITPendingBit(ETH_DMA_IT_NIS);
	//curPluseCnt = TIM3->CNT+(TIM2->CNT<<16);
}

/******************************************************************************/
/*                 STM32F4xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f4xx.s).                                               */
/******************************************************************************/
/**
  * @brief  This function handles PPP interrupt request.
  * @param  None
  * @retval None
  */
/*void PPP_IRQHandler(void)
{
}*/

//用于接收来自于导航板的数据
/* Navigation message receive handler */
void USART3_IRQHandler(void)
{
	static int16_t tim3_cnt, tim4_cnt;
	uint16_t uart_data;
	struct ptptime_t *time;
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
			//new data received and record new timestamp
			time=&(HNMsg_Buf.msg[HNMsg_Buf.rear].timestamp);
			ETH_PTPTime_GetTime(time);
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
}


/*******************************************************************************
DM9000中断处理函数，使用的是外部中断线15，它接的是PA15，当低电平是有效的，注意使用的
下降沿触发
********************************************************************************/
void EXTI15_10_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line15)==SET)
	{
		EXTI_ClearFlag(EXTI_Line15);
		/*
		if(DM9000_INT==0)
		{
			DM9000_ISRHandler();
		}
		*/
	}
	else if(EXTI_GetITStatus(EXTI_Line14)==SET)
	{
		EXTI_ClearITPendingBit(EXTI_Line14);
		if(sysStatus.initZeroPos==FALSE)
			sysStatus.initZeroPos = TRUE;
		lastPluseCnt = 0;
		curPluseCnt  = 0;
		time3Cnt = 0;
		TIM3->CNT = 0;
	}
}


//零位中断，计数器清零
void EXTI3_IRQHandler(void)
{
	
	EXTI_ClearITPendingBit(EXTI_Line3);	
	TIM3->CNT = 0;
	TIM2->CNT = 0;
	//******
	if(sysStatus.initZeroPos==FALSE)
		sysStatus.initZeroPos = TRUE;
	lastPluseCnt = 0;
	curPluseCnt  = 0;
	time3Cnt = 0;
	TIM3->CNT = 0;

}



/*********** Portions COPYRIGHT 2012 Embest Tech. Co., Ltd.*****END OF FILE****/
