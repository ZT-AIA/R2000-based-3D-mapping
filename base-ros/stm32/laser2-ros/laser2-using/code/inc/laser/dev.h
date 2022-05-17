#ifndef DEVICE_H
#define DEVICE_H

#include "stm32f4xx.h"
#include "dev_conf.h"
#include "lwip/opt.h"
#include "cmsis_os.h"
#include <math.h>

/*
typedef enum
{
	StepMotor_CH1 = 0,
	StepMotor_CH2
}StepMotor_CH;
*/


extern struct motor_spd motor_spd;
extern float currentSpeed;
extern void dev_Init(void);
extern void StepMotor_SpeedSet(float speed);
extern void Delay_ns(uint32_t dly);
extern void Delay_ms(uint32_t dly);
extern void motorAccelerateSpeed(float targetSpeed);
extern void motorDecelerateSpeed(float targetSpeed);
extern void StepMotor_Stop();
extern void StepMotor_Run();

#endif
