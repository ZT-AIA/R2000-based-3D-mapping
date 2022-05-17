#ifndef MSG_HANDLER_H
#define MSG_HANDLER_H

#include "dev.h"
#include "msg_type.h"
#include "stm32f4xx.h"
#include "lwip/pbuf.h"
#include "lwip/udp.h"
#include "lwip/opt.h"

/** Buffer Management **/
/* Point Cloud Message Buffer */
#define P_MSG_NUM	3

typedef struct
{
	struct point_msg  msg[P_MSG_NUM];
	volatile uint16_t front;
	volatile uint16_t rear;
	volatile uint16_t index;   	// index within message for elements
	uint16_t err_info;			// error count
}P_MSG_BUF;
/* Point Cloud Message Variable Declaration */
extern P_MSG_BUF PMsg_Buf;

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
/* Point Cloud Message Variable Declaration */
extern H_NAV_MSG_BUF HNMsg_Buf;

/* Navigation Message Buffer */
#define NAV_MSG_NUM			3
typedef struct
{
	struct nav_msg msg[NAV_MSG_NUM];
	volatile uint16_t front;
	volatile uint16_t rear;
	volatile uint16_t index;   	// index within message for elements
	uint16_t err_info;			// error count
}NAV_MSG_BUF;
/* Navigation Variable Declaration */
extern NAV_MSG_BUF NMsg_Buf;

/** Message Handlers **/
#define MAX_MSG_HANDLER		8
typedef enum{RUN_OK,RUN_DENY,RUN_UNDEF}stat_set;

/* socket */
struct socket_t
{
	struct udp_pcb *pcb;
	struct ip_addr addr;
	uint16_t	port;
};
/* System status */
struct sys_status
{
	volatile Bool_t Scanning;
	volatile Bool_t	Host_Ready;
	volatile Bool_t Scan_Reset;
	volatile Bool_t Scan_Overrun;
};

/**
 * Msg handler prototype:
 * stat_set msg_handler(void *msg)
 */
extern struct socket_t bd_socket;
extern stat_set (*msg_handler[MAX_MSG_HANDLER])(struct socket_t *sock, void *arg);
extern struct sys_status sys_status;

extern stat_set point_msg_send(struct socket_t *sock, struct pbuf *p);
extern stat_set hybrid_nav_msg_send(struct socket_t *sock, struct pbuf *p);
extern stat_set nav_msg_send(struct socket_t *sock, struct pbuf *p);

/* Critical Code Guard */
typedef uint32_t CPU_SR;
extern CPU_SR  CPU_SR_Save(void);
extern void    CPU_SR_Restore(CPU_SR cpu_sr);

#endif
