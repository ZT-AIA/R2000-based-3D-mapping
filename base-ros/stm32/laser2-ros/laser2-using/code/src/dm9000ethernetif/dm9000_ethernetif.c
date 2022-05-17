#include "dm9000_ethernetif.h"
#include "dm9000_lwip_comm.h"
#include "string.h"
#include "netif/etharp.h"
#include "lwip/netif.h"
#include "lwip/pbuf.h"
#include "lwip/timers.h"
#include "dm9000.h"

static void arp_timer(void *arg);
static err_t dm9000_low_level_output(struct netif *netif,struct pbuf *p);
static struct pbuf * dm9000_low_level_input(struct netif *netif);
static void arp_timer(void *arg);

extern struct dm9000_config dm9000cfg;


static err_t dm9000_low_level_init(struct netif *netif)
{
	/* set netif MAC hardware address length */
  netif->hwaddr_len = ETHARP_HWADDR_LEN;

  /* set netif MAC hardware address */
  netif->hwaddr[0] =  dm9000cfg.mac_addr[0];//DM9000_MAC_ADDR0;
  netif->hwaddr[1] =  dm9000cfg.mac_addr[1];//DM9000_MAC_ADDR1;
  netif->hwaddr[2] =  dm9000cfg.mac_addr[2];//DM9000_MAC_ADDR2;
  netif->hwaddr[3] =  dm9000cfg.mac_addr[3];//DM9000_MAC_ADDR3;
  netif->hwaddr[4] =  dm9000cfg.mac_addr[4];//DM9000_MAC_ADDR4;
  netif->hwaddr[5] =  dm9000cfg.mac_addr[5];//DM9000_MAC_ADDR5;

  /* set netif maximum transfer unit */
  netif->mtu = 1500;

  /* Accept broadcast address and ARP traffic */
  netif->flags = NETIF_FLAG_BROADCAST|NETIF_FLAG_ETHARP|NETIF_FLAG_LINK_UP;
	
	#ifdef LWIP_IGMP
	/* Accept multicast traffic. */
	netif->flags |= NETIF_FLAG_IGMP;
	#endif
	
	#ifdef sys_rtx_os
	etharp_init();
  sys_timeout(ARP_TMR_INTERVAL, arp_timer, NULL);
	#endif
	
	return ERR_OK;
}

/**************************************************************
*用于发送数据包的最底层函数(lwip通过netif->linkoutput指向该函数)
*netif:网卡结构体指针
*p:pbuf数据结构体指针
*返回值:ERR_OK,发送正常
*       ERR_MEM,发送失败
****************************************************************/

static err_t dm9000_low_level_output(struct netif *netif,struct pbuf *p)
{
	DM9000_SendPacket(p);
	return ERR_OK;
}


/*****************************************************************
*用于接收数据包的最底层函数
*neitif:网卡结构体指针
*返回值:pbuf数据结构体指针
******************************************************************/
static struct pbuf * dm9000_low_level_input(struct netif *netif)
{
	struct pbuf *p;
	p = DM9000_Receive_Packet();
	return p;
}

/******************************************************************
*此函数接收来自与dm9000的数据
*注意此时将该函数创建一个线程
*******************************************************************/
err_t dm9000ethernetif_input(struct netif *netif)
{
	struct pbuf *p;
	//uint32_t i=0;
	while(1)
	{
		if(sys_arch_sem_wait(&dm9000input,100)!=SYS_ARCH_TIMEOUT)
		{
			do
			{
				//printf("receive data!from dm9000!!!\n");
				p = dm9000_low_level_input(netif);
				if(p==NULL)
					break;
				if(netif->input(p,netif)!=ERR_OK)
				{
					pbuf_free(p);
					p=NULL;
				}
			}while(p!=NULL);
		}
		//printf("count:%#x\n",i++);
	}
}

void lwip_pkt_handler(struct netif *netif)
{
	struct pbuf *p = dm9000_low_level_input(netif);
	if(p!=NULL)
	{
		printf("process data in interrupt!!!\n");
		if(netif->input(p,netif)!=ERR_OK)
		{
			pbuf_free(p);
			p=NULL;
		}
	}
}


/**
 * Should be called at the beginning of the program to set up the
 * network interface. It calls the function low_level_init() to do the
 * actual setup of the hardware.
 *
 * This function should be passed as a parameter to netif_add().
 *
 * @param netif the lwip network interface structure for this ethernetif
 * @return ERR_OK if the loopif is initialized
 *         ERR_MEM if private data couldn't be allocated
 *         any other err_t on error
 */
err_t dm9000ethernetif_init(struct netif *netif)
{
  LWIP_ASSERT("netif != NULL", (netif != NULL));

#if LWIP_NETIF_HOSTNAME
  /* Initialize interface hostname */
  netif->hostname = "lwip";
#endif /* LWIP_NETIF_HOSTNAME */

  netif->name[0] = DIFNAME0;
  netif->name[1] = DIFNAME1;

  netif->output = etharp_output;
  netif->linkoutput = dm9000_low_level_output;

  /* initialize the hardware */
  dm9000_low_level_init(netif);

  return ERR_OK;
}

	
static void arp_timer(void *arg)
{
  etharp_tmr();
  sys_timeout(ARP_TMR_INTERVAL, arp_timer, NULL);
}

