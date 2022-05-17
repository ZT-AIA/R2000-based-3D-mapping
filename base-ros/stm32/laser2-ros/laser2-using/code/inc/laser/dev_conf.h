#ifndef CONF_H
#define CONF_H

#include <stm32f4xx.h>

/* Interrupt Priority */
#define ZPM1_RPIO					  2
#define ZPM2_PRIO					  3
#define USART1_PRIO					4
#define USART3_PRIO					5
#define Ether_PRIO          6
#define SYSTICK_PRIO				7

/* Uart baudrates */
#define USART1_BR					460800u
#define USART3_BR					115200u

/* Navigation module: interframe gap /us */
#define INTERFRAME_GAP 				500u

/* Sys_Tick = 10ms */
#define TICKS_PER_SEC				  100
/* System clock */
#define SYS_CLK						    168000000uL
/* Motor Parameters */
#define REDUCTION_RATIO				1    //减速比
#define PULSE_PER_ROTATION		180000   //每转多少个脉冲

/* Parameters depends on mechanical design */
//#define H_PLS_NUM					1574400u
#define H_PLS_NUM					  720000u
#define V_PLS_NUM					  327680u
#define V_PLS_NUM_1_4				81920u
#define V_PLS_NUM_VIEW_U 		16384u   // View angle
#define V_PLS_NUM_VIEW_D		58250u

/* ZPM(Zero Position Mark) PB3 & PD14*/
#define ZPM1			(GPIOB->IDR & GPIO_Pin_3)
#define ZPM2			(GPIOD->IDR & GPIO_Pin_14)

/* Default speed (r/min) */
#define H_DEFAULT_SPD				30.0f
#define V_DEFAULT_SPD				100.0f
#define H_MAX_SPD           180.0f
#define V_MINIMUM_SPD				0.25f

#define  HOR_ACCE	0.00001f	//水平方向加加速度值 以毫秒为单位

struct motor_spd
{
	float h_spd;
	float v_spd;
};

#endif
