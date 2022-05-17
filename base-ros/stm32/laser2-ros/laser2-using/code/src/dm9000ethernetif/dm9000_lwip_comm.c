#include "dm9000_lwip_comm.h"
#include "dm9000_ethernetif.h"
#include "lwip/netif.h"
#include "lwip/ip_addr.h"
#include "lwip/tcpip.h"
#include "netif/etharp.h"
#include "rt_System.h"
#include "dm9000.h"

extern struct dm9000_config dm9000cfg;//DM9000配置结构体

__lwip_dev lwipdev;	//lwip控制结构体 

sys_sem_t dm9000input;//接收数据的信号量
sys_mutex_t dm9000lock;//dm9000发送和接收的锁，可以使单次只能处理一个数据包
sys_sem_t dm9000printfsignal; 

extern void rt_tsk_lock   (void);
extern void rt_tsk_unlock (void);

struct netif dm9000_netif;

//dm9000数据的接收处理任务,需要单独建立一个线程的接收的函数
void lwip_dm9000_input_task(void *pdata)
{
	dm9000ethernetif_input(&dm9000_netif);
}

//打印接收的任务
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
	//默认的远端的ip地址，即pc的ip地址192.168.1.100
	lwipx->remoteip[0]=192;
	lwipx->remoteip[1]=168;
	lwipx->remoteip[2]=1;
	lwipx->remoteip[3]=100;
	//MAC地址设置(高三字节2,0,0，低三字节用的STM32位移ID)
	lwipx->mac[0]=dm9000cfg.mac_addr[0];
	lwipx->mac[1]=dm9000cfg.mac_addr[1];
	lwipx->mac[2]=dm9000cfg.mac_addr[2];
	lwipx->mac[3]=dm9000cfg.mac_addr[3];
	lwipx->mac[4]=dm9000cfg.mac_addr[4];
	lwipx->mac[5]=dm9000cfg.mac_addr[5];
	//默认本地ip地址192.168.1.18
	lwipx->ip[0]=192;
	lwipx->ip[1]=168;
	lwipx->ip[2]=1;
	lwipx->ip[3]=18;
	//默认子网掩码255.255.255.0
	lwipx->netmask[0]=255;
	lwipx->netmask[1]=255;
	lwipx->netmask[2]=255;
	lwipx->netmask[3]=0;
	//默认网关：192.168.1.1
	lwipx->gateway[0]=192;
	lwipx->gateway[1]=168;
	lwipx->gateway[2]=1;
	lwipx->gateway[3]=1;
	//没有dhcp
	lwipx->dhcpstatus = 0;
}

//LWIP初始化(LWIP启动的时候使用)
//返回值:0,成功
//      1,内存错误
//      2,DM9000初始化失败
//      3,网卡添加失败.
u8 lwip_comm_init(void)
{
	//u8 err;
	struct netif *Netif_Init_Flag;//调用netif_add()函数时的返回值,用于判断网络初始化是否成功
	struct ip_addr ipaddr;//ip地址
	struct ip_addr netmask;//子网掩码
	struct ip_addr gw;//默认网关
	
	#ifdef sys_rtx_os
	//创建与DM9000有关的信号量，互斥信号量
	if(sys_mutex_new(&dm9000lock)) //主要有关数据的收发，只允许一个对dm9000操作
		printf("create dm9000lock fail!!!\n");
	if(sys_sem_new(&dm9000input,0))//创建与dm9000接收传递相关的信号量
		printf("create dm9000input signal fail!\n");
	if(sys_sem_new(&dm9000printfsignal,0))
		printf("create dm9000printfsignal fail!!!\n");
	#endif
	if(DM9000_Init())//初始化DM9000AEP
		return 2;
	 tcpip_init( NULL, NULL );//初始化tcp ip内核,该函数里面会创建tcpip_thread内核任务
	lwip_comm_default_ip_set(&lwipdev);
	#if LWIP_DHCP//使用动态的ip
	ipaddr.addr = 0;
	netmask.addr = 0;
	gw.addr = 0;
	#else
	IP4_ADDR(&ipaddr,lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
	IP4_ADDR(&netmask,lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
	IP4_ADDR(&gw,lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
	printf("网卡en的MAC地址为:................%d.%d.%d.%d.%d.%d\r\n",lwipdev.mac[0],lwipdev.mac[1],lwipdev.mac[2],lwipdev.mac[3],lwipdev.mac[4],lwipdev.mac[5]);
	printf("静态IP地址........................%d.%d.%d.%d\r\n",lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
	printf("子网掩码..........................%d.%d.%d.%d\r\n",lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
	printf("默认网关..........................%d.%d.%d.%d\r\n",lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
	#endif
	
	#ifdef sys_rtx_os
	Netif_Init_Flag=netif_add(&dm9000_netif,&ipaddr,&netmask,&gw,NULL,&dm9000ethernetif_init,&tcpip_input);//向网卡列表中添加一个网口
	#else
	//Netif_Init_Flag=netif_add(&dm9000_netif,&ipaddr,&netmask,&gw,NULL,&dm9000ethernetif_init,&ethernet_input);//向网卡列表中添加一个网口
	#endif
	if(Netif_Init_Flag != NULL) 	//网口添加成功后,设置netif为默认值,并且打开netif网口
	{
		printf("netif_add : add netif ok.\n");
		netif_set_default(&dm9000_netif); //设置netif为默认网口
		netif_set_up(&dm9000_netif);		//打开netif网口
	}
	
	//创建dm9000的接收的线程
	#ifdef sys_rtx_os
	sys_thread_new((const char *)"dm9000_input",lwip_dm9000_input_task,NULL,DEFAULT_THREAD_STACKSIZE,osPriorityRealtime);
	//sys_thread_new((const char *)"printf_task",dm9000_printf_task,NULL,DEFAULT_THREAD_STACKSIZE,osPriorityNormal);
	#endif
	
	return 0;
}

