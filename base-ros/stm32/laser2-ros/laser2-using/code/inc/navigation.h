#ifndef _NAVIGATION_H
#define _NAVIGATION_H

#include <stdlib.h>
#include <stdint.h>
#include "ethernetif.h"//需要使用到ptptime_t的时间的
#include "ptpd.h"
#include "lwip/ip_addr.h"

/** Some useful macros or enumerations **/
#define ARRAY_LEN(a) (sizeof(a)/sizeof(*a))
//typedef enum{False, True}Bool_t;

#pragma pack(push)
#pragma pack(4)		// Confirms 4Bytes alignment 

/**
 * Message head typedef.
 * You can find detailed definations about msg_type 
 * and type_dscr here(msg_num is reserved for future).
 */
struct msg_head
{
	uint16_t msg_sn;	  // message serial number
	uint8_t  msg_type;
	uint8_t  type_dscr;	// further description of msg_type
};

#define MAX_MSG_HANDLER 8

/* Message Types */
enum msg_type
{
	SCAN_START = 0x00,
	SCAN_STOP,
	MOTOR_RUN,
	MOTOR_STOP,
	DEV_RST,
	MOTOR_SPD_SET,
	END_TRANS = 0X1f, //结束数据的传输
	HAND_SHAKE = 0x3f,//注意此时只是用到的该标志为，非激光雷达的扫描
	POINT_CLOUD = 0x81,
	NAV_MSG,
	HNAV_MSG
};

/* Message Type Descriptions */
enum msg_type_dscr
{
	MSG_FS 		= 0x01,
	MSG_MS 		= 0x02,
	MSG_LS 		= 0x04,
	MSG_ERR		= 0x6a,
	MSG_ACK		= 0xff
};

#define H_NAV_MSG_SIZE	128
/* Hybrid_navigation Message Typedef */
struct hybrid_nav_msg
{
	struct msg_head head;
	int16_t left_position;
	int16_t right_position;
	struct ptptime_t timestamp;//记录本次姿态数据到达的时间戳
	uint8_t hybrid_nav_data[H_NAV_MSG_SIZE];
};

/**
 * Define the navigation message.
 * You can config the parameters here.
 */
#define NAV_MSG_SIZE	380

/* Navigation Message Typedef */
struct nav_msg
{
	struct msg_head head;
	uint8_t nav_data[NAV_MSG_SIZE];
};

/** Buffer Management **/
/*  Hybrid Navigation Message Buffer  */
#define H_NAV_MSG_NUM	3
typedef struct
{
	struct hybrid_nav_msg msg[H_NAV_MSG_NUM];
	volatile uint16_t front;
	volatile uint16_t rear;
	volatile uint16_t index;   	// index within message for elements
	uint16_t err_info;			// error count
}H_NAV_MSG_BUF;
/* Navigation Message Variable Declaration */
extern H_NAV_MSG_BUF HNMsg_Buf;//用于存放导航的信息

struct sys_status {
	uint8_t hostready;//主机就绪
	uint8_t initZeroPos;//零位信号
};

typedef enum{RUN_OK,RUN_DENY,RUN_UNDEF}stat_set;

extern void NavgationProcess_Init(void);

#pragma pack(pop)
#endif
