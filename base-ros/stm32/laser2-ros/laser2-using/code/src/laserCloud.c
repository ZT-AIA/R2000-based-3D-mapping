#include "laserCloud.h"
#include "navigation.h"
#include "dev_conf.h"

struct sys_status sysStatus;
extern void rt_tsk_lock(void);
extern void rt_tsk_unlock(void);

sys_mbox_t laserReceiveQue;//����һ�����ܵı������ݵ���Ϣ�����䣬������Ϣ�Ĵ��ݵ�

int lastPluseCnt = 0;
int curPluseCnt  = 0;
bool initSystem = false;
int16_t time3Cnt = 0;

//��λ���Ķ˿ںţ�ip��ַ
#define hostport 8010
#define hostip_addr0 192
#define hostip_addr1 168
#define hostip_addr2 1
#define hostip_addr3 100//#############################

//���屾�δ�����̶߳˿ڵ�ַ
#define laserlocalport 8010


/*TIM4���벶��ͨ��1-----PD12,TIM4���벶��ͨ��2-----PD13
  PD12��PD13�������������������
  PD14����һ·���������λ���ź�
	PD14---------EXTI_LINE14,�����ش����ж�
*/
/*
static void QEPInit(void){
	GPIO_InitTypeDef GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;  
	EXTI_InitTypeDef EXTI_InitStructure;
	
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4,  ENABLE);
	//ʹ���ⲿ�ж�ʱ����ʹ��ϵͳʱ��
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE); 
	
	//��ʱ��TIM4��GPIO����
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;	//�ڶ����ܣ�����
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;	//���췽ʽ
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;        //������
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_13;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	//����GPIO����
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;   //����ģʽ
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;  //������Ҳ������
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource12,GPIO_AF_TIM4);  //TIM4����ͨ��1
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource13,GPIO_AF_TIM4);  //TIM4����ͨ��2
	
	TIM_TimeBaseStructure.TIM_Prescaler = 0; 			// û��Ԥ��Ƶ
	TIM_TimeBaseStructure.TIM_Period = 0xffffu; 
	//ʱ�ӷ�Ƶ���ӣ���������ʱ��ʱ��Ҫ�õ�
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	//���ϼ���
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;   
	//�ر��ظ�����
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);
	//���ò�����������룬�������࣬�����ش���
	TIM_EncoderInterfaceConfig(TIM4, TIM_EncoderMode_TI12, TIM_ICPolarity_Rising, TIM_ICPolarity_Rising);
	//�������벶���˲���N=8
	TIM4->CCMR1 |= (TIM_CCMR1_IC1F & (3uL << 4 ));   //ͨ��1:4-7λ
	TIM4->CCMR1 |= (TIM_CCMR1_IC2F & (3uL << 12));   //ͨ��2:12-15λ
	
	//����EXTI�ж�Դ��PD14
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOD, EXTI_PinSource14);   //�����ж�Դ��PD14����
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;   //�ж�ģʽ(�ǲ������ж϶������¼�)
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;     //�����ش����ж�
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;   //ʹ���ж���
	EXTI_InitStructure.EXTI_Line = EXTI_Line14;   //�ж���ѡ��
	EXTI_Init(&EXTI_InitStructure);   //��ʼ���ж�
	EXTI_ClearFlag(EXTI_Line14);  //����жϱ�־λ
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
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;	//�ڶ����ܣ�����
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;	//���췽ʽ
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;        //������
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
	
	GPIO_PinAFConfig(GPIOB,GPIO_PinSource4,GPIO_AF_TIM3);   //TIM3����ͨ��1
  GPIO_PinAFConfig(GPIOB,GPIO_PinSource5,GPIO_AF_TIM3);   //TIM3����ͨ��2
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource12,GPIO_AF_TIM4);  //TIM4����ͨ��1
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource13,GPIO_AF_TIM4);  //TIM4����ͨ��2
	
	//����EXTI�ж�Դ��PB3��PD14
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource3);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOD, EXTI_PinSource14);

	// Timer configuration in Encoder mode 
	//TIM_DeInit(TIM3);
	TIM_TimeBaseStructure.TIM_Prescaler = 0; 			// û��Ԥ��Ƶ
	TIM_TimeBaseStructure.TIM_Period 	= 0xffffu; 
	//ʱ�ӷ�Ƶ���ӣ���������ʱ��ʱ��Ҫ�õ�
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	//���ϼ���
	TIM_TimeBaseStructure.TIM_CounterMode 	= TIM_CounterMode_Up;   
	//�ر��ظ�����
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);
	TIM_TimeBaseInit(TIM5, &TIM_TimeBaseStructure);
	
	// TIM3 & TIM4 is configured as Master
	TIM_SelectOutputTrigger(TIM3, TIM_TRGOSource_Update);   //����TIM2����Դ
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
	sys_mbox_trypost(&laserReceiveQue,NULL);//�ͷ�һ����Ϣ
}

void laser_rec_fetch(void)
{
	sys_arch_mbox_fetch(&laserReceiveQue,NULL,10);//�ȴ���Ϣ����
}

//��ȡϵͳ�ĵ�ǰ��ʱ��ptp��ʱ��Ĵ����еõ���Ӧ��ʱ����Ϣ
void getCurTime(struct ptptime_t *time)
{
	ETH_PTPTime_GetTime(time);//��ȡ��ǰģ���ʱ��
}

//ֱ�Ӵӽ��ܵ�pbuf�е�ʱ���������ʱ����ı����
void getInputTime(struct pbuf *p,struct ptptime_t *time)
{
	time->tv_sec= p->time_sec;
	time->tv_nsec = p->time_nsec;
}

/**************************************************************************
*����һ��udp�Ļص��ĺ��������ڽ��ܵ������ݵĴ��������ܵ�
*���Ƶ����ݴ�����Ӧ�Ļ������
*void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
*    ip_addr_t *addr, u16_t port);
struct net_path{
	int front;
	int tail;
	void *pbufque[laserbufsize];
	struct udp_pcb *udppcb;
	uint16_t localport,remoteport;//���ض˿ں�,���ݱ��ķ��Ͷ˶˿ںź͸ñ���Ҫ���͵���λ����Զ�̵Ķ˿ں�
	struct ip_addr romoteip_addr,remoteip_addr;
	sys_mutex_t bufmutex;//���ڵ�front��tail��ֵ�ı��ʱ��ģ����������е���
};
***************************************************************************/
//udp���ջص�����anny��ַ���������״﷢���ݣ���λ��Ҳ������
void udplaser_callback(void *arg,struct udp_pcb *pcb,struct pbuf *p,
	ip_addr_t *addr,u16_t port)
{
	struct net_path *netpath = (struct net_path *)arg;
	//printf("udplaser_callback function is called!\n");
	if(((netpath->tail+1)&(laserbufsize-1))!=netpath->front)
	{
		if(p->tot_len<=30)
		{//��ȡ����������ip��ַ
		    netpath->remoteport = port;
			netpath->remoteip_addr = *addr;

		}
		netpath->pbufque[netpath->tail] = p;
		sys_mutex_lock(&(netpath->bufmutex));
		netpath->tail = (netpath->tail+1)&(laserbufsize-1);
		sys_mutex_unlock(&(netpath->bufmutex));
	}
	laser_rec_trypost();//sys_mbox_trypost(&laserReceiveQue,NULL);//�ͷ�һ����Ϣ
}

/****************************************************************
*�Խ��յı��ĵĽ��д�������ǰ���ܵ�ʱ�������ı�����,�ٴ����
*���ݰ����͸���λ���ģ���ʱ�����ݰ�������ʱ��Ĵ�����Ϣ
*struct ntp64{
    int32_t sec;//��������
    int32_t nsec;//С������
};

struct laser_head{
    uint16_t magic;//ħ�����ֽ�(0xa25c),�����һ�����ݰ��Ŀ�ʼ
    uint16_t packet_type;//ɨ�����ݷ�������ͣ�ABC
    uint32_t packet_size;//���ݰ��������С(���ֽ�Ϊ��λ������ͷ������Ч�����غɣ�
    uint16_t header_size;//���ݰ���ͷ���Ĵ�С(���ֽ�Ϊ��λ��Ҳ������Ч�غ����ݵ�ƫ����)

    uint16_t scan_number;//ɨ������к�(ÿɨ��һ������1����0��ʼ�����)
    uint16_t packet_number;//�������к�(һ��ɨ������ݰ��ļ�������1��ʼ)
    struct ntp64 timestamp_raw;//�ڱ������ݰ����״ν��յ���һ�����ʱ���
    struct ntp64 timestamp_sync;//�ڱ������ݰ��е��״ν��յ���һ�����ͬ��ʱ�����ע�⵱ǰ�汾�ǲ����õ�

    uint32_t status_flags;//ɨ���״̬�ı�־
    uint32_t scan_freq;//ͷ��ת����Ƶ��(1/1000Hz)
    uint16_t num_points_scan;//һ������ɨ��Ĳ�����
    uint16_t num_points_packet;//�����ݰ��еĲ�������

    uint16_t first_index;//��ǰ���ݰ�(����)�еĵ�һ��ɨ��������
    int32_t first_angle;//�÷����е�һ��ɨ���ľ��ԽǶ�(1/10000��)
    int32_t angular_increment;//����ɨ����������Ƕ�(1/10000��)����ʱ�룺��������˳ʱ�룺��������

    uint32_t iq_input;//����
    uint32_t iq_overload;//����
};

u16_t pbuf_copy_partial(struct pbuf *buf, void *dataptr, u16_t len, u16_t offset)//��pbuf�п���
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len)//������д�ص�pbuf

*****************************************************************/
void headProcess(struct pbuf *p,struct net_path *netpath)
{
	int16_t curcnt;
	if(p->tot_len>60)
	{
		//ʱ�����Ϣ
		char *pdata = p->payload;
		pdata+=22;
		*(int *)pdata = p->time_sec;
		pdata+=4;
		*(int *)pdata = p->time_nsec;
		

		curcnt=(int16_t)TIM3->CNT-time3Cnt;
		time3Cnt = (int16_t)TIM3->CNT;
		curPluseCnt+=curcnt;
		
		//��תƽ̨ת����������
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

//����Ӧ��ӵı���
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

//����һ���������ݵ�ת�����߳�
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
	//�ص�������ע��
	udp_recv(netpath.udppcb,udplaser_callback,&netpath);
	//�˿ںŵİ�
	udp_bind(netpath.udppcb,IP_ADDR_ANY,laserlocalport);
	for(;;)
	{
		while(netpath.front!=netpath.tail)
		{
			p = netpath.pbufque[netpath.front];
			if(p->tot_len<30)
			{//������λ����Ӧ��ĳ���
				cmdackpacket(p,&netpath);
			}
			else if(p->tot_len>30)//&&sysStatus.hostready==TRUE)//###################ros�²��ý���������λ������Ϣ
			{//������Ƶ�����
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
	//������Ϣ�Ľ��յ����䣬���ڽ�����Ϣ�Ĵ���
	if(sys_mbox_new(&laserReceiveQue,10)!=ERR_OK)
	{
		printf("create laserReceiveQue is fail!!!\n");
		return;
	}
	sys_thread_new("laserPointCloudForward_thread",laserPointCloudForward_thread,NULL,DEFAULT_THREAD_STACKSIZE*2,osPriorityAboveNormal);//�����߳�
}
