#ifndef dm9000_lwip_comm_h
#define dm9000_lwip_comm_h

#include "stm32f4xx.h"
#include "sys_arch.h"


//该文件定义的是与dm9000相关的网口初始化和一些线程的建立
#define LWIP_MAX_DHCP_TRIES		4   //DHCP服务器最大重试次数

//lwip控制结构体
typedef struct  
{
	u8 mac[6];      //MAC地址
	u8 remoteip[4];	//远端主机IP地址 
	u8 ip[4];       //本机IP地址
	u8 netmask[4]; 	//子网掩码
	u8 gateway[4]; 	//默认网关的IP地址
	
	vu8 dhcpstatus;	//dhcp状态 
					//0,未获取DHCP地址;
					//1,进入DHCP获取状态
					//2,成功获取DHCP地址
					//0XFF,获取失败.
}__lwip_dev;
extern __lwip_dev lwipdev;	//lwip控制结构体
extern struct netif dm9000_netif;

extern sys_sem_t dm9000input;//接收数据的信号量
extern sys_mutex_t dm9000lock;//dm9000发送和接收的锁，可以使单次只能处理一个数据包
extern sys_sem_t dm9000printfsignal;

extern u8 lwip_comm_init(void);
extern void lwip_dm9000_input_task(void *pdata);


#endif

