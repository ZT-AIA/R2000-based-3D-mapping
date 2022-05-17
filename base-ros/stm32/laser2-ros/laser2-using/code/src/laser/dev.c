#include "dev.h"

/* Default timer prescaler */
struct motor_spd motor_spd = {H_DEFAULT_SPD, V_DEFAULT_SPD};
float currentSpeed = 0.1f;

/* USART1 */
static void usart1_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA,  ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);
	/* usart1 GPIO configuration(PA9 & PA10) */
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_10;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	GPIO_PinAFConfig(GPIOA,GPIO_PinSource9, GPIO_AF_USART1);
  GPIO_PinAFConfig(GPIOA,GPIO_PinSource10,GPIO_AF_USART1);
	/* usart1 parameters configuration */
	USART_InitStructure.USART_BaudRate = USART1_BR;   
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_Init(USART1, &USART_InitStructure);
	USART_ClearFlag(USART1, USART_FLAG_RXNE);
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
	NVIC_SetPriority(USART1_IRQn, USART1_PRIO);
	NVIC_EnableIRQ(USART1_IRQn);

	USART_Cmd(USART1, ENABLE);
}

/* USART3 */
static void usart3_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD,  ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
	/* Usart1 GPIO configuration(PD8 & PD9) */
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource8,GPIO_AF_USART3);
  GPIO_PinAFConfig(GPIOD,GPIO_PinSource9,GPIO_AF_USART3);
	/* Uart3 parameters configuration */
	USART_InitStructure.USART_BaudRate = USART3_BR;   
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_Init(USART3, &USART_InitStructure);
	USART_ClearFlag(USART3, USART_FLAG_RXNE);
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
	NVIC_SetPriority(USART3_IRQn, USART3_PRIO);
	NVIC_EnableIRQ(USART3_IRQn);

	USART_Cmd(USART3, ENABLE);
}

/* Timer7 is configured for time_based delimit */
static void Timer7Init(void)
{
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM7, ENABLE);
	TIM_TimeBaseStructure.TIM_Period 	= 0xffffu;
	TIM_TimeBaseStructure.TIM_Prescaler = 167u;   // 200KHz
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM7, &TIM_TimeBaseStructure);
	//TIM_SelectOnePulseMode(TIM7, TIM_OPMode_Single);
	TIM_Cmd(TIM7, ENABLE);
}

/* Timer6 is configured for accurate delay */
static void Timer6Init(void)
{
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM6, ENABLE);
	TIM_TimeBaseStructure.TIM_Period 	= 0xffffu;
	TIM_TimeBaseStructure.TIM_Prescaler = 0;
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM6, &TIM_TimeBaseStructure);
	TIM_Cmd(TIM6, ENABLE);
}

/** 1000/84  = 11.904762 ; dly < 11.904762*65536(780190ns);
 * 	Accuracy = 11.9ns
 */
void Delay_ns(uint32_t dly)
{
	uint32_t timer_cnt;
	dly /= 11.904762f;
	timer_cnt = TIM6->CNT;
	while((TIM6->CNT - timer_cnt) < dly);
}
void Delay_ms(uint32_t dly)
{
	while(dly--)
	{
		Delay_ns(500000);
		Delay_ns(500000);
	}
}


void StepMotor_Stop()
{
	TIM1->BDTR &= (uint16_t)~TIM_BDTR_MOE;   //BDTR16位寄存器的最高位为0，关闭输出
	currentSpeed = 0.1f;
}

void StepMotor_Run()
{
	TIM1->BDTR |= TIM_BDTR_MOE;   //BDTR16位寄存器的最高位为1，输出使能
	currentSpeed = 0.1f;
}

/* speed = SYS_CLK/(2800*TIMx->PSC*PULSE_PER_ROTATION*REDUCTION_RATIO)*60 (r/min) */
void StepMotor_SpeedSet(float speed)
{
	//TIM1->PSC = SYS_CLK*60.0f/(speed*2800.0f*PULSE_PER_ROTATION*REDUCTION_RATIO) - 1;
	speed*=0.1;//****转得太快，乘0.1速度放慢十倍
	if(currentSpeed < speed){
		//s型加速
		motorAccelerateSpeed(speed);
	}else{
		//s型减速
		motorDecelerateSpeed(speed);
	}
}

void motorAccelerateSpeed(float targetSpeed){
	float V = 0,V1 = 0;
	float InfT = 0,St = 0,T = 0;			     //T以毫秒为单位
	//float startSpeed = SYS_CLK*60/(2800*(TIM1->PSC + 1)*PULSE_PER_ROTATION*REDUCTION_RATIO);
	float startSpeed = currentSpeed;
	if(startSpeed >= targetSpeed)
		return;
	if(targetSpeed > H_MAX_SPD)
		targetSpeed = H_MAX_SPD;
	
	V1 = (targetSpeed + startSpeed)/2;
	InfT = sqrt(2*(V1-startSpeed)/HOR_ACCE);	//以毫秒为单位
	St = (2/startSpeed + 0.5f);   //St以毫秒为单位
	while(T < InfT)
	{		
		T += St;
		V = startSpeed + HOR_ACCE*T*T/2;
		TIM1->PSC = SYS_CLK*60.0f/(V*2800.0f*PULSE_PER_ROTATION*REDUCTION_RATIO) - 1;
//		Delay_ms(St);

	}
	while(targetSpeed - V > 0.1f)
	{		
		T += St; 
		V = 2*HOR_ACCE*T*InfT - HOR_ACCE*T*T/2 - 2*V1 + 3*startSpeed;
		TIM1->PSC = SYS_CLK*60.0f/(V*2800.0f*PULSE_PER_ROTATION*REDUCTION_RATIO) - 1;
//		Delay_ms(St);
	}
	
	currentSpeed = targetSpeed;
}

void motorDecelerateSpeed(float targetSpeed){
	float V = 0,V1 = 0;
	float InfT = 0,St = 0,T = 0;			     //T以毫秒为单位
	//float StartSpeed = SYS_CLK*60/(TIM8->PSC*630.0f*1000);//0.36步距角
	float StartSpeed = currentSpeed;
	if(StartSpeed <= targetSpeed)
		return;
	if(targetSpeed < V_MINIMUM_SPD)
		targetSpeed = V_MINIMUM_SPD;
	V1 = (targetSpeed + StartSpeed)/2;
	InfT = sqrt(2*(V1-targetSpeed)/HOR_ACCE);	//以毫秒为单位
	St = (2/targetSpeed + 0.5f);     //St以毫秒为单位
	while(T < InfT)
	{
		T += St;
		V = StartSpeed - HOR_ACCE*T*T/2;
		TIM1->PSC = SYS_CLK*60.0f/(V*2800.0f*PULSE_PER_ROTATION*REDUCTION_RATIO) - 1;
//		Delay_ms(St);
	}
	while(V - targetSpeed > 0.1f)
	{
		T += St;
		V = HOR_ACCE*T*T/2 - 2*HOR_ACCE*T*InfT - 2*V1 + 3*StartSpeed;
		TIM1->PSC = SYS_CLK*60.0f/(V*2800.0f*PULSE_PER_ROTATION*REDUCTION_RATIO) - 1;
//		Delay_ms(St);
	}
	
	currentSpeed = targetSpeed;
}

void SysTickInit(void)
{
	RCC_ClocksTypeDef RCC_Clocks;
	/* Configure the Interruption Priority Group */
	NVIC_SetPriorityGrouping(NVIC_PriorityGroup_4 >> 8);
	/* Configure Systick clock source as HCLK */
	SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK);
	/* SystTick configuration: an interrupt every 10ms */
	RCC_GetClocksFreq(&RCC_Clocks);
	SysTick_Config(RCC_Clocks.HCLK_Frequency / TICKS_PER_SEC);
	NVIC_SetPriority(SysTick_IRQn, SYSTICK_PRIO);
}

//电机延时的定时器初始化,但是有问题
void dev_Init(void)
{
	//SysTickInit();加入了嵌入式的操作系统，用到了滴答定时器
	Timer6Init();
	Timer7Init();
	//Delay_ms(10);
	//usart1_Init();
	//usart3_Init();
}
