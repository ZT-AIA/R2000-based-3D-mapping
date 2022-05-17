#include "navigation.h"
#include "stm32f4xx_usart.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_tim.h"
#include "dev_conf.h"
#include "laserCloud.h"

#if !defined  (__CC_ARM )
#error "__CC_ARM undefined!"
#else
__align(4) H_NAV_MSG_BUF HNMsg_Buf;
#endif

struct sys_status sysstatus;
extern void rt_tsk_lock(void);
extern void rt_tsk_unlock(void);


/* USART3 */
//用于接收来自于传感器MTi的数据

void USART3_NVIC_Config(void)
{
  NVIC_InitTypeDef   NVIC_InitStructure;

  NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = USART3_PRIO;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

static void usart3_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD,  ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
	/* Usart1 GPIO configuration(PD8 & PD9) */
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource8,GPIO_AF_USART3);
  GPIO_PinAFConfig(GPIOD,GPIO_PinSource9,GPIO_AF_USART3);
	/* Uart3 parameters configuration */
	USART_InitStructure.USART_BaudRate = USART3_BR;   
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_Init(USART3, &USART_InitStructure);
	USART3_NVIC_Config();
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
	USART_ClearFlag(USART3, USART_FLAG_RXNE);
	USART_Cmd(USART3, ENABLE);
}

/* Timer7 is configured for time_based delimit */
static void Timer7Init(void)
{
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM7, ENABLE);
	TIM_TimeBaseStructure.TIM_Period 	= 0xffffu;
	TIM_TimeBaseStructure.TIM_Prescaler = 167u;   // 200KHz
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM7, &TIM_TimeBaseStructure);
	TIM_Cmd(TIM7, ENABLE);
}

/*
 *******************************************************************
 *	Des. Quadrature Encoder Pulse Circuit Initialization
 *	1.Timer3 & Timer4 is configured as quadrature encoder
 * 	2.PB3 & PD14 is configured as Zero Position Mark Input(ZPMI)
 * 	3.PB3 is connected to EXTI_Line3 while PD14 is connected to EXTI_Line14
 * 	4.Timer2(5) is configured to be the prescaler of Timer3(4)
 *  5.QEP1{Timer3 Timer2 PB3}  QEP2{Timer4 Timer5 PD14}
 *******************************************************************
 */
static void QEPInit(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;  
	//TIM_ICInitTypeDef TIM_ICInitStructure;
	EXTI_InitTypeDef EXTI_InitStructure;

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2,  ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3,  ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4,  ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM5,  ENABLE);
	/* Enable SYSCFG clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);  

	/* Configure encoder input */
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_13;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	GPIO_PinAFConfig(GPIOB,GPIO_PinSource4,GPIO_AF_TIM3);
  GPIO_PinAFConfig(GPIOB,GPIO_PinSource5,GPIO_AF_TIM3);
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource12,GPIO_AF_TIM4);
  GPIO_PinAFConfig(GPIOD,GPIO_PinSource13,GPIO_AF_TIM4);
	/* Connect EXTI Line to PB3 & PD14 Pin */
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource3);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOD, EXTI_PinSource14);

	/* Timer configuration in Encoder mode */ 
	//TIM_DeInit(TIM3);
	TIM_TimeBaseStructure.TIM_Prescaler = 0; 			// No prescaling 
	TIM_TimeBaseStructure.TIM_Period 	= 0xffffu; 
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseStructure.TIM_CounterMode 	= TIM_CounterMode_Up;   
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM5, &TIM_TimeBaseStructure);
	
	/* TIM3 & TIM4 is configured as Master */
	TIM_SelectOutputTrigger(TIM3, TIM_TRGOSource_Update);
	TIM_SelectMasterSlaveMode(TIM3, TIM_MasterSlaveMode_Enable);
	TIM_SelectOutputTrigger(TIM4, TIM_TRGOSource_Update);
	TIM_SelectMasterSlaveMode(TIM4, TIM_MasterSlaveMode_Enable);
	/* TIM2 & TIM5 is configured as Slave */
	TIM_SelectInputTrigger(TIM2, TIM_TS_ITR2);
	TIM_SelectSlaveMode(TIM2, TIM_SlaveMode_External1);
	TIM_ITRxExternalClockConfig(TIM2, TIM_TS_ITR2);
	TIM_SelectInputTrigger(TIM5, TIM_TS_ITR2);
	TIM_SelectSlaveMode(TIM5, TIM_SlaveMode_External1);
	TIM_ITRxExternalClockConfig(TIM5, TIM_TS_ITR2);
	
	/* TIM3 & TIM4 is configured as QEP I/F */
	TIM_EncoderInterfaceConfig(TIM3, TIM_EncoderMode_TI12, TIM_ICPolarity_Rising, TIM_ICPolarity_Rising);
	TIM_EncoderInterfaceConfig(TIM4, TIM_EncoderMode_TI12, TIM_ICPolarity_Rising, TIM_ICPolarity_Rising);
	
	TIM3->CCMR1 |= (TIM_CCMR1_IC1F & (1uL << 4 ));
	TIM3->CCMR1 |= (TIM_CCMR1_IC2F & (1uL << 12));
	TIM4->CCMR1 |= (TIM_CCMR1_IC1F & (3uL << 4 ));
	TIM4->CCMR1 |= (TIM_CCMR1_IC2F & (3uL << 12));
	
	/* EXTI */
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;  
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_InitStructure.EXTI_Line = EXTI_Line3;
	EXTI_Init(&EXTI_InitStructure);
	EXTI_InitStructure.EXTI_Line = EXTI_Line14;
	EXTI_Init(&EXTI_InitStructure);
	EXTI_ClearFlag(EXTI_Line3);
	EXTI_ClearFlag(EXTI_Line14);
	NVIC_SetPriority(EXTI3_IRQn, ZPM1_RPIO);
	NVIC_SetPriority(EXTI15_10_IRQn, ZPM2_PRIO);
	NVIC_EnableIRQ(EXTI3_IRQn);
	NVIC_EnableIRQ(EXTI15_10_IRQn);
	
	TIM_Cmd(TIM2, ENABLE);
	TIM_Cmd(TIM3, ENABLE);
	TIM_Cmd(TIM4, ENABLE);
	TIM_Cmd(TIM5, ENABLE);
}

/*******************************************************************************************************
*定义一个udp的回调的函数，用于接受点云数据的处理，将接受的
*点云的数据存入相应的缓冲队列
*typedef void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
*    ip_addr_t *addr, u16_t port);
arg传入的参数，pcb接收到数据的控制块，p是存放数据的数据块，addr发送端的ip地址，port发送端的端口号
*typedef struct net_path{
*	int front;
*	int tail;
*	void *pbufque[laserbufsize];
*	struct udp_pcb *udppcb;
*	uint16_t localport,remoteport;//本地端口号,数据报文发送端端口号和该报文要发送的上位机的远程的端口号
*	struct ip_addr romoteip_addr,remoteip_addr;
*	sys_mutex_t bufmutex;//用于当front和tail的值改变的时候的，对整个队列的锁
*}net_path;
********************************************************************************************************/
//上位机的端口号，ip地址
#define hostport 10000
#define ip_addr0 192
#define ip_addr1 168
#define ip_addr2 1
#define ip_addr3 100

#define navUdpLocalPort 10000

sys_mbox_t navReceiveQue;//定义一个接受的报文数据的消息的邮箱，用于消息的传递的

void navudp_callback(void *arg,struct udp_pcb *pcb,struct pbuf *p,ip_addr_t *addr,u16_t port)
{
	struct net_path *netpath = (struct net_path *)arg;
	//将接受到的数据放入netpath的队列中
	if(netpath->front!=((netpath->tail+1)&(laserbufsize-1)))
	{
		netpath->pbufque[netpath->tail]= p;
		netpath->remoteport = port;
		netpath->remoteip_addr = *addr;
		sys_mutex_lock(&(netpath->bufmutex));
		netpath->tail = ((netpath->tail+1)&(laserbufsize-1));
		sys_mutex_unlock(&(netpath->bufmutex));
	}
	sys_mbox_trypost(&navReceiveQue,NULL);//传递消息邮箱
}

//process receive data
void handlerRecdata(struct pbuf *p,struct net_path *netpath)
{
	struct msg_head recv_msg;
	uint8_t recv_msg_type;
	/* Get the udp datagram head */
	pbuf_copy_partial(p, &recv_msg, sizeof(recv_msg),0);
	recv_msg_type = recv_msg.msg_type;
	if(recv_msg_type<MAX_MSG_HANDLER)
		recv_msg.type_dscr = MSG_ACK;
	else
	{
		if(recv_msg_type==HAND_SHAKE)
		{
			recv_msg.type_dscr = MSG_ACK;
			sysstatus.hostready=TRUE;
		}
		else if(recv_msg_type==END_TRANS)
		{
			recv_msg.type_dscr = MSG_ACK;
			sysstatus.hostready = FALSE;
		}
		else
			recv_msg.type_dscr = MSG_ERR;
		recv_msg_type = MAX_MSG_HANDLER-1;
	}
	pbuf_take(p,&recv_msg,sizeof(recv_msg));
	/* Reply */
	udp_sendto(netpath->udppcb,p,&(netpath->remoteip_addr),netpath->remoteport);
}

//send navgation data
stat_set hybrid_nav_msg_send(struct net_path *net, struct pbuf *p)
{
	struct msg_head *head;
	static uint16_t msg_sn, ready_cnt;
	
	if(HNMsg_Buf.front != HNMsg_Buf.rear)
	{
		head = &HNMsg_Buf.msg[HNMsg_Buf.front].head;
		head->msg_sn = msg_sn++;
		head->msg_type = HNAV_MSG;
		head->type_dscr = 0;
		p->payload = &HNMsg_Buf.msg[HNMsg_Buf.front];
		
		if(ready_cnt < 5)
			ready_cnt++;
		else
			udp_sendto(net->udppcb, p, &(net->remoteip_addr), net->remoteport);
		
		rt_tsk_lock();
		HNMsg_Buf.front = (HNMsg_Buf.front + 1)%H_NAV_MSG_NUM;
		rt_tsk_unlock();
		
		return RUN_OK;	
	}
	return RUN_OK;
}

//data process thread
void NavgationProcess_Thread(void *msg)
{
	struct net_path net;
	struct pbuf *p;
	struct pbuf *p_hybrid_nav;
	
	//dev initial
	usart3_Init();
	Timer7Init();
	QEPInit();
	
	net.udppcb = udp_new();
	net.remoteport = hostport;
	net.localport = navUdpLocalPort;
	IP4_ADDR(&(net.remoteip_addr),ip_addr0,ip_addr1,ip_addr2,ip_addr3);
	
	p_hybrid_nav = pbuf_alloc(PBUF_TRANSPORT, sizeof(struct hybrid_nav_msg), PBUF_ROM);
	
	if(sys_mutex_new(&(net.bufmutex)))
	{
		printf("create net.bufmutex fail!!!\n");
		return;
	}
	
	if(net.udppcb==NULL)
	{
		printf("net.udppcb create fail!!!\n");
		return;
	}
	
	//绑定端口号，以及回调函数
	udp_recv(net.udppcb,navudp_callback,&net);
	udp_bind(net.udppcb,IP_ADDR_ANY,navUdpLocalPort);
	for(;;)
	{
		while(net.tail!=net.front)
		{
			p = net.pbufque[net.front];
			rt_tsk_lock();
			sys_mutex_lock(&(net.bufmutex));
			net.front = (net.front+1)&(laserbufsize-1);
			sys_mutex_unlock(&(net.bufmutex));
			rt_tsk_unlock();
			handlerRecdata(p,&net);
			pbuf_free(p);
		}
		if(sysstatus.hostready==TRUE)
		{
			hybrid_nav_msg_send(&net,p_hybrid_nav);
		}
		sys_arch_mbox_fetch(&navReceiveQue,NULL,10);
	}
}

//navigation data thread cteate
void NavgationProcess_Init(void)
{
	if(sys_mbox_new(&navReceiveQue,8))
	{
		printf("create navReceiveQue mbox fail!!!\n");
	}
	sys_thread_new("NavgationProcess_Thread",NavgationProcess_Thread,NULL,DEFAULT_THREAD_STACKSIZE*2,osPriorityNormal);
}
