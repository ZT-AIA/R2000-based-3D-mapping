#ifndef dm9000_ethernetif_H
#define dm9000_ethernetif_H
/*****************************************
*���ĵ���Ҫʵ�ֵ���dm9000��ethernetif�����ã�
*Ϊʵ��˫������׼���ģ���Ҫʵ�ֵ���dm9000����
*����MAC+DM9161��ʵ�ֵ�˫��������ʵ�����ݵĴ�
*��
******************************************/

#include "lwip/err.h"
#include "lwip/netif.h"
#include "system.h"
#include "lwip/pbuf.h"
#include "sys_arch.h"
#include "lwip/sys.h"

//������dm9000�йص����������,ip��ַ���������룬
//Ĭ������

/* MAC ADDRESS*/
#define DM9000_MAC_ADDR0   02
#define DM9000_MAC_ADDR1   00
#define DM9000_MAC_ADDR2   00
#define DM9000_MAC_ADDR3   00
#define DM9000_MAC_ADDR4   00
#define DM9000_MAC_ADDR5   00

//ip��ַ
#define dm9000_ipaddr0 192
#define dm9000_ipaddr1 168
#define dm9000_ipaddr2 1
#define dm9000_ipaddr3 18

//��������
#define dm9000_netmask0 255
#define dm9000_netmask1 255
#define dm9000_netmask2 255
#define dm9000_netmask3 0

//Ĭ������
#define dm9000_gateway0 192
#define dm9000_gateway1 168
#define dm9000_gateway2 1
#define dm9000_gateway3 1

#define DIFNAME0 'z'
#define DIFNAME1 'd'

extern err_t dm9000ethernetif_input(struct netif *netif);
extern err_t dm9000ethernetif_init(struct netif *netif);
extern void lwip_pkt_handler(struct netif *netif);


#endif

