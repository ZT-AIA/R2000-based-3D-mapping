#ifndef dm9000_lwip_comm_h
#define dm9000_lwip_comm_h

#include "stm32f4xx.h"
#include "sys_arch.h"


//���ļ����������dm9000��ص����ڳ�ʼ����һЩ�̵߳Ľ���
#define LWIP_MAX_DHCP_TRIES		4   //DHCP������������Դ���

//lwip���ƽṹ��
typedef struct  
{
	u8 mac[6];      //MAC��ַ
	u8 remoteip[4];	//Զ������IP��ַ 
	u8 ip[4];       //����IP��ַ
	u8 netmask[4]; 	//��������
	u8 gateway[4]; 	//Ĭ�����ص�IP��ַ
	
	vu8 dhcpstatus;	//dhcp״̬ 
					//0,δ��ȡDHCP��ַ;
					//1,����DHCP��ȡ״̬
					//2,�ɹ���ȡDHCP��ַ
					//0XFF,��ȡʧ��.
}__lwip_dev;
extern __lwip_dev lwipdev;	//lwip���ƽṹ��
extern struct netif dm9000_netif;

extern sys_sem_t dm9000input;//�������ݵ��ź���
extern sys_mutex_t dm9000lock;//dm9000���ͺͽ��յ���������ʹ����ֻ�ܴ���һ�����ݰ�
extern sys_sem_t dm9000printfsignal;

extern u8 lwip_comm_init(void);
extern void lwip_dm9000_input_task(void *pdata);


#endif

