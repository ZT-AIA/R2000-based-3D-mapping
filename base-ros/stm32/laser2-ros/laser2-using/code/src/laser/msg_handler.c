#include "msg_handler.h"

/* Message Handlers Declarations */
static stat_set scan_start	 (struct socket_t *sock, void *arg);
static stat_set scan_stop 	 (struct socket_t *sock, void *arg);
static stat_set motor_run 	 (struct socket_t *sock, void *arg);
static stat_set motor_stop	 (struct socket_t *sock, void *arg);
static stat_set dev_reset 	 (struct socket_t *sock, void *arg);
static stat_set motor_spd_set(struct socket_t *sock, void *arg);
/* ... */
static stat_set do_nothing 	 (struct socket_t *sock, void *arg);

/* PMsg_Buf NMsg_Buf */
#if !defined  (__CC_ARM )
#error "__CC_ARM undefined!"
#else
__align(4) P_MSG_BUF 	 PMsg_Buf;
__align(4) NAV_MSG_BUF   NMsg_Buf;
__align(4) H_NAV_MSG_BUF HNMsg_Buf;
#endif

/* Private variables */
static enum msg_type_dscr Msg_Type_Dscr = MSG_FS;
static uint16_t msg_sn;

/* msg_handler array */
stat_set (*msg_handler[MAX_MSG_HANDLER])(struct socket_t *sock, void *arg) = 
{
	scan_start, scan_stop, motor_run, 	  motor_stop,
	dev_reset, motor_spd_set, do_nothing, do_nothing,
};

static stat_set scan_start(struct socket_t *sock, void *arg)
{
	if(sys_status.Scanning == True || sys_status.Scan_Reset == True)
		return RUN_DENY;
	StepMotor_Run(StepMotor_CH1);
	//Delay_ms(600);  // shake rejection
	sys_msleep(600);
	TIM3->CNT  = 1000u;
	TIM2->CNT  = 0;
	Msg_Type_Dscr = MSG_FS;
	sys_status.Scanning = True;
	return RUN_OK;
}

static stat_set scan_stop(struct socket_t *sock, void *arg)
{
	struct pbuf *p;
	struct msg_head *head;
	if(sys_status.Scanning == False)
		return RUN_DENY;
	sys_status.Scanning = False;
	StepMotor_Stop(StepMotor_CH1);
	while(PMsg_Buf.front != PMsg_Buf.rear) // // Until queue is empty
	{
		p = pbuf_alloc(PBUF_TRANSPORT, sizeof(struct point_msg), PBUF_ROM);
		point_msg_send(&bd_socket,p);
		pbuf_free(p);
	}
	p 	 = pbuf_alloc(PBUF_TRANSPORT, sizeof(struct msg_head) + 
			sizeof(struct point_type)*PMsg_Buf.index, PBUF_POOL);
    head = &PMsg_Buf.msg[PMsg_Buf.front].head;
	head->msg_sn 	= msg_sn++;
	head->msg_type 	= POINT_CLOUD;
	head->type_dscr = MSG_LS;
	pbuf_take(p,&PMsg_Buf.msg[PMsg_Buf.front],
	sizeof(struct msg_head) + sizeof(struct point_type)*PMsg_Buf.index);
	udp_sendto(sock->pcb, p, &sock->addr, sock->port);
	pbuf_free(p); // PBUF_POOL
	
	PMsg_Buf.index = 0;
	// Temporary experiment
	StepMotor_SpeedSet(StepMotor_CH1,motor_spd.h_spd*20);
	GPIO_ToggleBits(GPIOD, GPIO_Pin_11);
	GPIO_SetBits(GPIOD, GPIO_Pin_0);
	StepMotor_Run(StepMotor_CH1);
	//while(!ZPM1);
	sys_status.Scan_Reset = True;
	
	return RUN_OK;
}
static stat_set motor_run(struct socket_t *sock, void *arg)
{
	StepMotor_Run(StepMotor_CH1);
	return RUN_OK;
}
static stat_set motor_stop(struct socket_t *sock, void *arg)
{
	StepMotor_Stop(StepMotor_CH1);
	return RUN_OK;
}
static stat_set dev_reset (struct socket_t *sock, void *arg)
{
	CPU_SR_Save();
	NVIC_SystemReset();  // software reset
	while(True);
}
static stat_set motor_spd_set(struct socket_t *sock, void *arg)
{
	pbuf_copy_partial(arg,&motor_spd,sizeof(motor_spd),sizeof(struct msg_head));
	/*
	if(motor_spd.h_spd >= H_DEFAULT_SPD*20 || motor_spd.h_spd <= 0.0f)
		motor_spd.h_spd = H_DEFAULT_SPD;
	if(motor_spd.v_spd >= V_DEFAULT_SPD*10 || motor_spd.v_spd <= 0.0f)
		motor_spd.v_spd = V_DEFAULT_SPD;
	*/
	if(motor_spd.h_spd >= H_DEFAULT_SPD*16 || motor_spd.h_spd <= 0.0f)
		motor_spd.h_spd = H_DEFAULT_SPD;
	if(motor_spd.v_spd >= V_DEFAULT_SPD*8 || motor_spd.v_spd <= 0.0f)
		motor_spd.v_spd = V_DEFAULT_SPD;
	StepMotor_SpeedSet(StepMotor_CH1, motor_spd.h_spd);
	StepMotor_SpeedSet(StepMotor_CH2, motor_spd.v_spd);
	return RUN_OK;
}
static stat_set do_nothing(struct socket_t *sock, void *arg)
{
	return RUN_OK;
}

stat_set point_msg_send(struct socket_t *sock, struct pbuf *p)
{
	struct msg_head *head;
	CPU_SR  cpu_sr;
	
	if(PMsg_Buf.front != PMsg_Buf.rear)	// Buffer Empty?
	{
		head = &PMsg_Buf.msg[PMsg_Buf.front].head;
		head->msg_sn    = msg_sn++;
		head->msg_type  = POINT_CLOUD;
		head->type_dscr = Msg_Type_Dscr;
		Msg_Type_Dscr 	= MSG_MS;
			
		p->payload = &PMsg_Buf.msg[PMsg_Buf.front];
		udp_sendto(sock->pcb, p, &sock->addr, sock->port);
		
		cpu_sr = CPU_SR_Save();
		PMsg_Buf.front = (PMsg_Buf.front + 1)%P_MSG_NUM;
		CPU_SR_Restore(cpu_sr);
		return RUN_OK;
	}
	return RUN_OK;
}

stat_set hybrid_nav_msg_send(struct socket_t *sock, struct pbuf *p)
{
	struct msg_head *head;
	static uint16_t msg_sn, ready_cnt;
	CPU_SR cpu_sr;
	
	if(HNMsg_Buf.front != HNMsg_Buf.rear)
	{
		head = &HNMsg_Buf.msg[HNMsg_Buf.front].head;
		head->msg_sn = msg_sn++;
		head->msg_type = HNAV_MSG;
		head->type_dscr = 0;
		p->payload = &HNMsg_Buf.msg[HNMsg_Buf.front];
		
		if(ready_cnt < 10)
			ready_cnt++;
		else
			udp_sendto(sock->pcb, p, &sock->addr, sock->port);
		
		cpu_sr = CPU_SR_Save();
		HNMsg_Buf.front = (HNMsg_Buf.front + 1)%H_NAV_MSG_NUM;
		CPU_SR_Restore(cpu_sr);
		return RUN_OK;	
	}
	return RUN_OK;
}

stat_set nav_msg_send(struct socket_t *sock, struct pbuf *p)
{
	struct msg_head *head;
	static uint16_t msg_sn;
	CPU_SR cpu_sr;
	
	if(NMsg_Buf.front != NMsg_Buf.rear)
	{
		head = &NMsg_Buf.msg[NMsg_Buf.front].head;
		head->msg_sn = msg_sn++;
		head->msg_type = NAV_MSG;
		head->type_dscr = 0;
		p->payload = &NMsg_Buf.msg[NMsg_Buf.front];
		udp_sendto(sock->pcb, p, &sock->addr, sock->port);
		
		cpu_sr = CPU_SR_Save();
		NMsg_Buf.front = (NMsg_Buf.front + 1)%NAV_MSG_NUM;
		CPU_SR_Restore(cpu_sr);
		return RUN_OK;	
	}
	return RUN_OK;
}
