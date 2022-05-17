#include "laserCloud.h"
#include "navigation.h"
#include "dev_conf.h"

struct sys_status sysStatus;
extern void rt_tsk_lock(void);
extern void rt_tsk_unlock(void);

sys_mbox_t laserReceiveQue;//定义一个接受的报文数据的消息的邮箱，用于消息的传递的

int lastPluseCnt = 0;
int curPluseCnt  = 0;
bool initSystem = false;
int16_t time3Cnt = 0;

//上位机的端口号，ip地址
#define hostport 8010
#define hostip_addr0 192
#define hostip_addr1 168
#define hostip_addr2 1
#define hostip_addr3 100//#############################

//定义本次处理的线程端口地址
#define laserlocalport 8010


/*TIM4输入捕获通道1-----PD12,TIM4输入捕获通道2-----PD13
  PD12与PD13接收两相编码器的脉冲
  PD14接收一路编码器零点位置信号
	PD14---------EXTI_LINE14,上升沿触发中断
*/
/*
static void QEPInit(void){
	GPIO_InitTypeDef GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;  
	EXTI_InitTypeDef EXTI_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4,  ENABLE);
	//使用外部中断时必须使能系统时钟
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE); 
	
	//定时器TIM4的GPIO配置
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;	//第二功能，复用
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;	//推挽方式
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;        //带上拉
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_13;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	//零点的GPIO配置
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;   //输入模式
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;  //不上拉也不下拉
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource12,GPIO_AF_TIM4);  //TIM4捕获通道1
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource13,GPIO_AF_TIM4);  //TIM4捕获通道2
	
	TIM_TimeBaseStructure.TIM_Prescaler = 0; 			// 没有预分频
	TIM_TimeBaseStructure.TIM_Period = 0xffffu; 
	//时钟分频因子，配置死区时间时需要用到
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	//向上计数
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;   
	//关闭重复计数
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);
	//配置捕获编码器输入，捕获两相，上升沿触发
	TIM_EncoderInterfaceConfig(TIM4, TIM_EncoderMode_TI12, TIM_ICPolarity_Rising, TIM_ICPolarity_Rising);
	//设置输入捕获滤波器N=8
	TIM4->CCMR1 |= (TIM_CCMR1_IC1F & (3uL << 4 ));   //通道1:4-7位
	TIM4->CCMR1 |= (TIM_CCMR1_IC2F & (3uL << 12));   //通道2:12-15位
	
	//连接EXTI中断源到PD14
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOD, EXTI_PinSource14);   //连接中断源到PD14引脚
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;   //中断模式(记产生了中断而不是事件)
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;     //上升沿触发中断
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;   //使能中断线
	EXTI_InitStructure.EXTI_Line = EXTI_Line14;   //中断线选择
	EXTI_Init(&EXTI_InitStructure);   //初始化中断
	EXTI_ClearFlag(EXTI_Line14);  //清除中断标志位
	NVIC_SetPriority(EXTI15_10_IRQn, ZPM2_PRIO);
	NVIC_EnableIRQ(EXTI15_10_IRQn);
	

	TIM_Cmd(TIM4, ENABLE);
	TIM4->CNT = 0;
}*/


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
	// Enable SYSCFG clock
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);  

	// Configure encoder input 
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;	//第二功能，复用
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;	//推挽方式
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;        //带上拉
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_13;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	GPIO_PinAFConfig(GPIOB,GPIO_PinSource4,GPIO_AF_TIM3);   //TIM3捕获通道1
  GPIO_PinAFConfig(GPIOB,GPIO_PinSource5,GPIO_AF_TIM3);   //TIM3捕获通道2
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource12,GPIO_AF_TIM4);  //TIM4捕获通道1
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource13,GPIO_AF_TIM4);  //TIM4捕获通道2
	
	//连接EXTI中断源到PB3、PD14
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource3);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOD, EXTI_PinSource14);

	// Timer configuration in Encoder mode 
	//TIM_DeInit(TIM3);
	TIM_TimeBaseStructure.TIM_Prescaler = 0; 			// 没有预分频
	TIM_TimeBaseStructure.TIM_Period 	= 0xffffu; 
	//时钟分频因子，配置死区时间时需要用到
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	//向上计数
	TIM_TimeBaseStructure.TIM_CounterMode 	= TIM_CounterMode_Up;   
	//关闭重复计数
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM5, &TIM_TimeBaseStructure);
	
	// TIM3 & TIM4 is configured as Master
	TIM_SelectOutputTrigger(TIM3, TIM_TRGOSource_Update);   //配置TIM2触发源
	TIM_SelectMasterSlaveMode(TIM3, TIM_MasterSlaveMode_Enable);
	TIM_SelectOutputTrigger(TIM4, TIM_TRGOSource_Update);
	TIM_SelectMasterSlaveMode(TIM4, TIM_MasterSlaveMode_Enable);
	// TIM2 & TIM5 is configured as Slave
	TIM_SelectInputTrigger(TIM2, TIM_TS_ITR2);
	TIM_SelectSlaveMode(TIM2, TIM_SlaveMode_External1);
	TIM_ITRxExternalClockConfig(TIM2, TIM_TS_ITR2);
	TIM_SelectInputTrigger(TIM5, TIM_TS_ITR2);
	TIM_SelectSlaveMode(TIM5, TIM_SlaveMode_External1);
	TIM_ITRxExternalClockConfig(TIM5, TIM_TS_ITR2);
	
	// TIM3 & TIM4 is configured as QEP I/F
	TIM_EncoderInterfaceConfig(TIM3, TIM_EncoderMode_TI12, TIM_ICPolarity_Rising, TIM_ICPolarity_Rising);
	TIM_EncoderInterfaceConfig(TIM4, TIM_EncoderMode_TI12, TIM_ICPolarity_Rising, TIM_ICPolarity_Rising);
	
	TIM3->CCMR1 |= (TIM_CCMR1_IC1F & (1uL << 4 ));
	TIM3->CCMR1 |= (TIM_CCMR1_IC2F & (1uL << 12));
	TIM4->CCMR1 |= (TIM_CCMR1_IC1F & (3uL << 4 ));
	TIM4->CCMR1 |= (TIM_CCMR1_IC2F & (3uL << 12));
	
	// EXTI ENABLE
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
	TIM2->CNT = 0;
	TIM3->CNT = 0;
	TIM4->CNT = 0;
	TIM5->CNT = 0;
}


void laser_rec_trypost(void)
{
	sys_mbox_trypost(&laserReceiveQue,NULL);//释放一个消息
}

void laser_rec_fetch(void)
{
	sys_arch_mbox_fetch(&laserReceiveQue,NULL,10);//等待消息邮箱
}

//获取系统的当前的时间ptp的时间寄存器中得到相应的时间信息
void getCurTime(struct ptptime_t *time)
{
	ETH_PTPTime_GetTime(time);//获取当前模块的时间
}

//直接从接受的pbuf中的时间戳拷贝到时间戳的标记中
void getInputTime(struct pbuf *p,struct ptptime_t *time)
{
	time->tv_sec= p->time_sec;
	time->tv_nsec = p->time_nsec;
}

/**************************************************************************
*定义一个udp的回调的函数，用于接受点云数据的处理，将接受的
*点云的数据存入相应的缓冲队列
*void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
*    ip_addr_t *addr, u16_t port);
struct net_path{
	int front;
	int tail;
	void *pbufque[laserbufsize];
	struct udp_pcb *udppcb;
	uint16_t localport,remoteport;//本地端口号,数据报文发送端端口号和该报文要发送的上位机的远程的端口号
	struct ip_addr romoteip_addr,remoteip_addr;
	sys_mutex_t bufmutex;//用于当front和tail的值改变的时候的，对整个队列的锁
};
***************************************************************************/
//udp接收回调，绑定anny地址，不单单雷达发数据，上位机也发数据
void udplaser_callback(void *arg,struct udp_pcb *pcb,struct pbuf *p,
	ip_addr_t *addr,u16_t port)
{
	struct net_path *netpath = (struct net_path *)arg;
	//printf("udplaser_callback function is called!\n");
	if(((netpath->tail+1)&(laserbufsize-1))!=netpath->front)
	{
		if(p->tot_len<=30)
		{//获取电脑主机的ip地址
		    netpath->remoteport = port;
			netpath->remoteip_addr = *addr;

		}
		netpath->pbufque[netpath->tail] = p;
		sys_mutex_lock(&(netpath->bufmutex));
		netpath->tail = (netpath->tail+1)&(laserbufsize-1);
		sys_mutex_unlock(&(netpath->bufmutex));
	}
	laser_rec_trypost();//sys_mbox_trypost(&laserReceiveQue,NULL);//释放一个消息
}

/****************************************************************
*对接收的报文的进行处理，将当前接受的时间戳加入的报文中,再打包成
*数据包发送给上位机的，此时的数据包包含了时间的戳的信息
*struct ntp64{
    int32_t sec;//整数部分
    int32_t nsec;//小数部分
};

struct laser_head{
    uint16_t magic;//魔术的字节(0xa25c),标记者一个数据包的开始
    uint16_t packet_type;//扫描数据分组的类型，ABC
    uint32_t packet_size;//数据包的整体大小(以字节为单位，包括头部和有效数据载荷）
    uint16_t header_size;//数据包的头部的大小(以字节为单位，也就是有效载荷数据的偏移量)

    uint16_t scan_number;//扫描的序列号(每扫描一次增加1，从0开始，溢出)
    uint16_t packet_number;//包的序列号(一次扫描的数据包的计数，从1开始)
    struct ntp64 timestamp_raw;//在本次数据包中首次接收到第一个点的时间戳
    struct ntp64 timestamp_sync;//在本次数据包中的首次接收到第一个点的同步时间戳，注意当前版本是不可用的

    uint32_t status_flags;//扫描的状态的标志
    uint32_t scan_freq;//头部转动的频率(1/1000Hz)
    uint16_t num_points_scan;//一次完整扫描的采样点
    uint16_t num_points_packet;//本数据包中的采样点数

    uint16_t first_index;//当前数据包(分组)中的第一个扫描点的索引
    int32_t first_angle;//该分组中第一个扫描点的绝对角度(1/10000°)
    int32_t angular_increment;//两个扫描点间的增量角度(1/10000°)（逆时针：正增量，顺时针：负增量）

    uint32_t iq_input;//保留
    uint32_t iq_overload;//保留
};

u16_t pbuf_copy_partial(struct pbuf *buf, void *dataptr, u16_t len, u16_t offset)//从pbuf中拷贝
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len)//将数据写回到pbuf

*****************************************************************/
void headProcess(struct pbuf *p,struct net_path *netpath)
{
	int16_t curcnt;
	if(p->tot_len>60)
	{
		//时间戳信息
		char *pdata = p->payload;
		pdata+=22;
		*(int *)pdata = p->time_sec;
		pdata+=4;
		*(int *)pdata = p->time_nsec;
		

		curcnt=(int16_t)TIM3->CNT-time3Cnt;
		time3Cnt = (int16_t)TIM3->CNT;
		curPluseCnt+=curcnt;
		
		//旋转平台转动的脉冲数
		if(!initSystem)
		{
			initSystem = true;
			lastPluseCnt = curPluseCnt;
		}
		
		pdata = p->payload;
		pdata+=52;
		*(int *)pdata = lastPluseCnt;
		pdata+=4;
		*(int *)pdata = curPluseCnt;
		lastPluseCnt  = curPluseCnt;
	}
}

//处理应答从的报文
void cmdackpacket(struct pbuf *p,struct net_path *netpath)
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
			sysStatus.hostready=TRUE;
		}
		else if(recv_msg_type==END_TRANS)
		{
			recv_msg.type_dscr = MSG_ACK;
			sysStatus.hostready = FALSE;
		}
		else
			recv_msg.type_dscr = MSG_ERR;
			recv_msg_type = MAX_MSG_HANDLER-1;
			initSystem = false;
	}
	pbuf_take(p,&recv_msg,sizeof(recv_msg));
	/* Reply */
	udp_sendto(netpath->udppcb,p,&(netpath->remoteip_addr),netpath->remoteport);
}

//定义一个点云数据的转发的线程
void laserPointCloudForward_thread(void *msg)
{
	struct net_path netpath;
	err_t error;
	struct pbuf *p;
	
	QEPInit();
	
	netpath.udppcb = udp_new();
	netpath.front = netpath.tail = 0;
	netpath.remoteport =  hostport;
	netpath.localport = laserlocalport;
	IP4_ADDR(&netpath.remoteip_addr,hostip_addr0,hostip_addr1,hostip_addr2,hostip_addr3);
	//IP4_ADDR(&netpath.remoteip_addr,192,168,1,101);
	IP4_ADDR(&netpath.localip_addr,192,168,1,10);
	
	error = sys_mutex_new(&(netpath.bufmutex));
	if(error!=ERR_OK)
	{
		printf("create netpath.bufmutex fail!");
		return;
	}
	
	if(netpath.udppcb==NULL)
	{
		printf("create udp_pcb fail!");
		return;
	}
	//回调函数的注册
	udp_recv(netpath.udppcb,udplaser_callback,&netpath);
	//端口号的绑定
	udp_bind(netpath.udppcb,IP_ADDR_ANY,laserlocalport);
	for(;;)
	{
		while(netpath.front!=netpath.tail)
		{
			p = netpath.pbufque[netpath.front];
			if(p->tot_len<30)
			{//来自上位机的应答的程序
				cmdackpacket(p,&netpath);
			}
			else if(p->tot_len>30)//&&sysStatus.hostready==TRUE)//###################ros下不用接收来自上位机的消息
			{//激光点云的数据
				headProcess(p,&netpath);
				if(sysStatus.initZeroPos==TRUE)
					udp_sendto(netpath.udppcb,p,&(netpath.remoteip_addr),netpath.remoteport);
			}
			pbuf_free(p);
			sys_mutex_lock(&(netpath.bufmutex));
			netpath.front = (netpath.front+1)&(laserbufsize-1);
			sys_mutex_unlock(&(netpath.bufmutex));
		}
		laser_rec_fetch();
	}
}

void laserCloud_Init(void)
{
	//创建消息的接收的邮箱，用于接收消息的传递
	if(sys_mbox_new(&laserReceiveQue,10)!=ERR_OK)
	{
		printf("create laserReceiveQue is fail!!!\n");
		return;
	}
	sys_thread_new("laserPointCloudForward_thread",laserPointCloudForward_thread,NULL,DEFAULT_THREAD_STACKSIZE*2,osPriorityAboveNormal);//创建线程
}
