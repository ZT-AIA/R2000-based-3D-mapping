/* 2014-5-4 by void_zz
 * Edited 2014-10-19 
 */
#include "dev.h"
#include "stm32f4x7_eth.h"
#include "stm32f4x7_eth_bsp.h"
#include "netconf.h"
#include "msg_handler.h"
#include "lwip/pbuf.h"
#include "lwip/udp.h"

/* LwIP call-back function to process udp packets */
void udp_callback(void *arg, struct udp_pcb *upcb, 
		struct pbuf *p,struct ip_addr *addr, u16_t port);
/* This variable is used to create a time reference incremented by 1000/TICKS_PER_SEC */
volatile uint32_t LocalTime;
/* A connect on board */
struct socket_t bd_socket;
/* system status (global) */
struct sys_status sys_status;

#define STATION_PORT 10000

/** At this stage the microcontroller clock setting is already configured to 
 *  168 MHz, this is done through SystemInit() function which is called from
 *  startup file (startup_stm32f4xx.s) before to branch to application main.
 *  To reconfigure the default setting of SystemInit() function, refer to
 *  system_stm32f4xx.c file	
 */
int main(void)
{
	struct pbuf *ppoint,*pnav;
	struct pbuf *p_hybrid_nav;
	dev_Init();
	ETH_BSP_Config();
	/* Initilaize the LwIP stack */
	LwIP_Init();
	/* Initilaize socket */
	bd_socket.pcb = udp_new();
	udp_bind(bd_socket.pcb, IP_ADDR_ANY, STATION_PORT);
	udp_recv(bd_socket.pcb, udp_callback, 0);
	/* pbuf used for point cloud message */
	ppoint = pbuf_alloc(PBUF_TRANSPORT, sizeof(struct point_msg), PBUF_ROM);
	pnav   = pbuf_alloc(PBUF_TRANSPORT, sizeof(struct nav_msg), PBUF_ROM);
	p_hybrid_nav = pbuf_alloc(PBUF_TRANSPORT, sizeof(struct hybrid_nav_msg), PBUF_ROM);
	/* Infinite loop */
	while(True)
	{
		/* check if any packet received */
		if(ETH_CheckFrameReceived())
		{
			/* process received ethernet packet */
			LwIP_Pkt_Handle();
		}
		/* periodic timers for LwIP */
		LwIP_Periodic_Handle(LocalTime);
		if(sys_status.Host_Ready == False) 
			continue;
		
		hybrid_nav_msg_send(&bd_socket, p_hybrid_nav);
		
		/* Point Cloud Message */
		//point_msg_send(&bd_socket, ppoint);
		//nav_msg_send(&bd_socket, pnav);
		if(sys_status.Scan_Overrun == True)
		{
			msg_handler[SCAN_STOP](&bd_socket, NULL);
			sys_status.Scan_Overrun = False;
		}
	}
}

/* Message Handlers consist in msg_handler array */
void udp_callback(void *arg, struct udp_pcb *upcb, 
	struct pbuf *p, struct ip_addr *addr, u16_t port)
{
	struct msg_head recv_msg;
	uint8_t recv_msg_type;
	/* Update the bd_socket */
	bd_socket.addr = *addr;
	bd_socket.port = port;
	/* Get the udp datagram head */
	pbuf_copy_partial(p, &recv_msg, sizeof(recv_msg),0);
	recv_msg_type = recv_msg.msg_type;
	if(recv_msg_type < MAX_MSG_HANDLER)
		recv_msg.type_dscr = MSG_ACK;
	else
	{
		if(recv_msg_type == HAND_SHAKE)
		{
			sys_status.Host_Ready = True;
			recv_msg.type_dscr = MSG_ACK;
		}
		else 
			recv_msg.type_dscr = MSG_ERR;
		recv_msg_type = MAX_MSG_HANDLER - 1;
	}
	/* Call message handler */
	msg_handler[recv_msg_type](&bd_socket, p);
	pbuf_take(p,&recv_msg,sizeof(recv_msg));
	/* Reply */
	udp_sendto(upcb, p, &bd_socket.addr, bd_socket.port);
	/* Free the p buffer */
	pbuf_free(p);
}
