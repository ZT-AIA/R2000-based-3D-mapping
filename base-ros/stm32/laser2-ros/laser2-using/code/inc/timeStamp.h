/*************************************
*测试有光数据结构的定义以及一些相关宏的
*定义
**************************************/

#ifndef _TIME_STAMP_
#define _TIME_STAMP_

#include <stdint.h>
#include "ethernetif.h"//需要使用到ptptime_t的时间的
#include "ptpd.h"

#define TV_TIMEOFFSET 10
#define TV_BUF_SIZE 4
//#define TICK_DELAY

//测试报文的文件头
typedef struct msghead{
	uint16_t msg_sn;//序列号
	uint8_t	msg_type;//报文类型
	uint8_t msg_resp;//报文响应
}msghead;

//传送主从时钟之间的时间偏差
struct timeoffset{
	struct ptptime_t curtime;
	int32_t to_nsec;//纳秒级别时钟偏移
	int32_t to_sec; //秒级别时钟偏移
};

struct msgtime{
	struct msghead head;
	struct timeoffset offset[TV_TIMEOFFSET];
};

typedef struct msg_timeoffset{
	struct msgtime time[TV_BUF_SIZE];
	uint8_t index;
	uint8_t head;
	uint8_t tail;
	sys_mutex_t mutex;
}msg_time;

typedef enum{
	TOK=0,
	TERR,
	UNDEF
}Bool_t;

typedef enum{//定义报文类型
	connectTest = 0x30,
	hostRead = 0x3e,
	devReset = 0x3f,
	TIME_OFF = 0x80
}msg_type;

typedef enum{
	RESPERR = 0x00,
	first_middle_data=0x01,
	last_data=0x02,
	RESPOK = 0xff
}msg_resp;

typedef struct timestate{
	Bool_t hostready;
	Bool_t devreset;
}timeState;

//为了完成对接收到的数据的网络的数据的处理
typedef struct{
	uint8_t head;
	uint8_t tail;
	void *bufque[PBUF_QUEUE_SIZE];//接收的数据包缓冲队里
	struct udp_pcb * udppcb;//udp控制块
	struct ip_addr unicast;//单播ip地址
	uint16_t port;//端口号
	
	struct ip_addr remoteip;
	uint16_t remoteport;
	uint16_t remote_trans_port;
	sys_mutex_t bufque_mutex;
}net_Path;

extern msg_time TIME_TEST;

void time_init(void);


#endif

