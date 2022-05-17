#ifndef _MOTORCTRL_H
#define _MOTORCTRL_H

#include "stm32f4xx_gpio.h"
#include "stm32f4xx_tim.h"
#include "stm32f4xx.h"
#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>

enum direction
{
	CW,
	CCW
};


//只是系统的状态参数
struct statePara
{
	bool run;
	bool hostReady;
	float speed;
	enum direction dir;
};

extern void motorCtrl_Init(void);

#endif

