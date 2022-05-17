#include "dm9000_lwip_comm.h"
#include "dm9000_ethernetif.h"
#include "lwip/netif.h"
#include "lwip/ip_addr.h"
#include "lwip/tcpip.h"
#include "netif/etharp.h"
#include "rt_System.h"
#include "dm9000.h"

extern struct dm9000_config dm9000cfg;//DM9000���ýṹ��

__lwip_dev lwipdev;	//lwip���ƽṹ�� 

sys_sem_t dm9000input;//�������ݵ��ź���
sys_mutex_t dm9000lock;//dm9000���ͺͽ��յ���������ʹ����ֻ�ܴ���һ�����ݰ�
sys_sem_t dm9000printfsignal; 

extern void rt_tsk_lock   (void);
extern void rt_tsk_unlock (void);

struct netif dm9000_netif;

//dm9000���ݵĽ��մ�������,��Ҫ��������һ���̵߳Ľ��յĺ���
void lwip_dm9000_input_task(void *pdata)
{
	dm9000ethernetif_input(&dm9000_netif);
}

//��ӡ���յ�����
void dm9000_printf_task(void *msg)
{
	while(1)
	{
		if(sys_arch_sem_wait(&dm9000printfsignal,100)!=SYS_ARCH_TIMEOUT)
		{
			printf("receive data from dm9000!!!\n");
		}
	}
}

void lwip_comm_default_ip_set(__lwip_dev *lwipx)
{
	//Ĭ�ϵ�Զ�˵�ip��ַ����pc��ip��ַ192.168.1.100
	lwipx->remoteip[0]=192;
	lwipx->remoteip[1]=168;
	lwipx->remoteip[2]=1;
	lwipx->remoteip[3]=100;
	//MAC��ַ����(�����ֽ�2,0,0�������ֽ��õ�STM32λ��ID)
	lwipx->mac[0]=dm9000cfg.mac_addr[0];
	lwipx->mac[1]=dm9000cfg.mac_addr[1];
	lwipx->mac[2]=dm9000cfg.mac_addr[2];
	lwipx->mac[3]=dm9000cfg.mac_addr[3];
	lwipx->mac[4]=dm9000cfg.mac_addr[4];
	lwipx->mac[5]=dm9000cfg.mac_addr[5];
	//Ĭ�ϱ���ip��ַ192.168.1.18
	lwipx->ip[0]=192;
	lwipx->ip[1]=168;
	lwipx->ip[2]=1;
	lwipx->ip[3]=18;
	//Ĭ����������255.255.255.0
	lwipx->netmask[0]=255;
	lwipx->netmask[1]=255;
	lwipx->netmask[2]=255;
	lwipx->netmask[3]=0;
	//Ĭ�����أ�192.168.1.1
	lwipx->gateway[0]=192;
	lwipx->gateway[1]=168;
	lwipx->gateway[2]=1;
	lwipx->gateway[3]=1;
	//û��dhcp
	lwipx->dhcpstatus = 0;
}

//LWIP��ʼ��(LWIP������ʱ��ʹ��)
//����ֵ:0,�ɹ�
//      1,�ڴ����
//      2,DM9000��ʼ��ʧ��
//      3,�������ʧ��.
u8 lwip_comm_init(void)
{
	//u8 err;
	struct netif *Netif_Init_Flag;//����netif_add()����ʱ�ķ���ֵ,�����ж������ʼ���Ƿ�ɹ�
	struct ip_addr ipaddr;//ip��ַ
	struct ip_addr netmask;//��������
	struct ip_addr gw;//Ĭ������
	
	#ifdef sys_rtx_os
	//������DM9000�йص��ź����������ź���
	if(sys_mutex_new(&dm9000lock)) //��Ҫ�й����ݵ��շ���ֻ����һ����dm9000����
		printf("create dm9000lock fail!!!\n");
	if(sys_sem_new(&dm9000input,0))//������dm9000���մ�����ص��ź���
		printf("create dm9000input signal fail!\n");
	if(sys_sem_new(&dm9000printfsignal,0))
		printf("create dm9000printfsignal fail!!!\n");
	#endif
	if(DM9000_Init())//��ʼ��DM9000AEP
		return 2;
	 tcpip_init( NULL, NULL );//��ʼ��tcp ip�ں�,�ú�������ᴴ��tcpip_thread�ں�����
	lwip_comm_default_ip_set(&lwipdev);
	#if LWIP_DHCP//ʹ�ö�̬��ip
	ipaddr.addr = 0;
	netmask.addr = 0;
	gw.addr = 0;
	#else
	IP4_ADDR(&ipaddr,lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
	IP4_ADDR(&netmask,lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
	IP4_ADDR(&gw,lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
	printf("����en��MAC��ַΪ:................%d.%d.%d.%d.%d.%d\r\n",lwipdev.mac[0],lwipdev.mac[1],lwipdev.mac[2],lwipdev.mac[3],lwipdev.mac[4],lwipdev.mac[5]);
	printf("��̬IP��ַ........................%d.%d.%d.%d\r\n",lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
	printf("��������..........................%d.%d.%d.%d\r\n",lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
	printf("Ĭ������..........................%d.%d.%d.%d\r\n",lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
	#endif
	
	#ifdef sys_rtx_os
	Netif_Init_Flag=netif_add(&dm9000_netif,&ipaddr,&netmask,&gw,NULL,&dm9000ethernetif_init,&tcpip_input);//�������б������һ������
	#else
	//Netif_Init_Flag=netif_add(&dm9000_netif,&ipaddr,&netmask,&gw,NULL,&dm9000ethernetif_init,&ethernet_input);//�������б������һ������
	#endif
	if(Netif_Init_Flag != NULL) 	//������ӳɹ���,����netifΪĬ��ֵ,���Ҵ�netif����
	{
		printf("netif_add : add netif ok.\n");
		netif_set_default(&dm9000_netif); //����netifΪĬ������
		netif_set_up(&dm9000_netif);		//��netif����
	}
	
	//����dm9000�Ľ��յ��߳�
	#ifdef sys_rtx_os
	sys_thread_new((const char *)"dm9000_input",lwip_dm9000_input_task,NULL,DEFAULT_THREAD_STACKSIZE,osPriorityRealtime);
	//sys_thread_new((const char *)"printf_task",dm9000_printf_task,NULL,DEFAULT_THREAD_STACKSIZE,osPriorityNormal);
	#endif
	
	return 0;
}

