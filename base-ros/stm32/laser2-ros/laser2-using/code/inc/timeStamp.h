/*************************************
*�����й����ݽṹ�Ķ����Լ�һЩ��غ��
*����
**************************************/

#ifndef _TIME_STAMP_
#define _TIME_STAMP_

#include <stdint.h>
#include "ethernetif.h"//��Ҫʹ�õ�ptptime_t��ʱ���
#include "ptpd.h"

#define TV_TIMEOFFSET 10
#define TV_BUF_SIZE 4
//#define TICK_DELAY

//���Ա��ĵ��ļ�ͷ
typedef struct msghead{
	uint16_t msg_sn;//���к�
	uint8_t	msg_type;//��������
	uint8_t msg_resp;//������Ӧ
}msghead;

//��������ʱ��֮���ʱ��ƫ��
struct timeoffset{
	struct ptptime_t curtime;
	int32_t to_nsec;//���뼶��ʱ��ƫ��
	int32_t to_sec; //�뼶��ʱ��ƫ��
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

typedef enum{//���屨������
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

//Ϊ����ɶԽ��յ������ݵ���������ݵĴ���
typedef struct{
	uint8_t head;
	uint8_t tail;
	void *bufque[PBUF_QUEUE_SIZE];//���յ����ݰ��������
	struct udp_pcb * udppcb;//udp���ƿ�
	struct ip_addr unicast;//����ip��ַ
	uint16_t port;//�˿ں�
	
	struct ip_addr remoteip;
	uint16_t remoteport;
	uint16_t remote_trans_port;
	sys_mutex_t bufque_mutex;
}net_Path;

extern msg_time TIME_TEST;

void time_init(void);


#endif

