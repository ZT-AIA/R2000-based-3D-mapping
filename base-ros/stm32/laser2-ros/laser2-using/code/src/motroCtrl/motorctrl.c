#include "motorctrl.h"
#include "udp.h"
#include "pbuf.h"
#include "ip_addr.h"
#include "sys_arch.h"
#include "sys.h"
#include "laserCloud.h"
#include "navigation.h"
#include "dev.h"

//�����Ķ���
#define motorlocalport 20000
#define motorremoteport 20000
//��λ��ip��ַ
#define hostip_addr0 192
#define hostip_addr1 168
#define hostip_addr2 1
#define hostip_addr3 101

//����һ�����Ƶ���Ϣ������
sys_mbox_t  motorCtrlQueue;

//ˮƽ����Ĳ���
struct statePara state_para;

//����һ���ٶȵ����õ�ȫ�ֵı���
struct motor_spd motorSpd={H_DEFAULT_SPD,V_DEFAULT_SPD};

static void motor_rec_trypost(void)
{
	sys_mbox_trypost(&motorCtrlQueue,NULL);//�ͷ�һ����Ϣ
}

static void motor_rec_fetch(void)
{
	sys_arch_mbox_fetch(&motorCtrlQueue,NULL,10);//�ȴ���Ϣ����
}

//������Ϣ������
/* Message Handlers Declarations */
static stat_set scan_start	 (struct net_path *net, void *arg);
static stat_set scan_stop 	 (struct net_path *net, void *arg);
static stat_set motor_run 	 (struct net_path *net, void *arg);
static stat_set motor_stop	 (struct net_path *net, void *arg);
static stat_set dev_reset 	 (struct net_path *net, void *arg);
static stat_set motor_spd_set(struct net_path *net, void *arg);
/* ... */
static stat_set do_nothing 	 (struct net_path *net, void *arg);

//����ָ������
stat_set (*msg_handler[MAX_MSG_HANDLER])(struct net_path *net, void *arg)=
{
	scan_start,scan_stop,motor_run,motor_stop,
	dev_reset,motor_spd_set,do_nothing,do_nothing
};

//��������������Ҫ����������ά����ɨ����
static stat_set scan_start(struct net_path *net,void *arg)
{
	return RUN_OK;
}

static stat_set scan_stop(struct net_path *net,void *arg)
{
	return RUN_OK;
}

//ˮƽ����Ŀ��ؿ���
static stat_set motor_run(struct net_path *net,void *arg)
{
	StepMotor_Run();
	GPIO_SetBits(GPIOD, GPIO_Pin_11);
	return RUN_OK;
}

static stat_set motor_stop(struct net_path *net,void *arg)
{
	StepMotor_Stop();
	return RUN_OK;
}

static stat_set dev_reset(struct net_path *net,void *arg)
{
	NVIC_SystemReset();
	while(1);
}

static stat_set motor_spd_set(struct net_path *net,void *arg)
{
	pbuf_copy_partial(arg,&motorSpd,sizeof(motorSpd),sizeof(struct msg_head));
	
	if(motorSpd.h_spd >= H_DEFAULT_SPD*6.001f || motorSpd.h_spd <= 0.0f)
		motorSpd.h_spd = H_DEFAULT_SPD;
	if(motorSpd.v_spd >= V_DEFAULT_SPD*8 || motorSpd.v_spd <= 0.0f)
		motorSpd.v_spd = V_DEFAULT_SPD;
	//ת�����
	StepMotor_SpeedSet(motorSpd.h_spd);
	//�������
	//StepMotor_SpeedSet(StepMotor_CH2, motorSpd.v_spd);
	
	return RUN_OK;
}

static stat_set do_nothing   (struct net_path *net,void *arg)
{
	return RUN_OK;
}

/*******************************************************************
*���ļ���Ҫ���ڿ��Ƶ������ת��ʹ�����趨ʱ������PWM
*������ˮƽ�ĵ������ת��ע��ARM�����TTL��ƽ����Ҫ
*����ת��Ϊ����ź�
*�������ţ�PA8
*�������ţ�PD11
********************************************************************/
static void PWMInit(void){
	//���ų�ʼ���ṹ��
	GPIO_InitTypeDef GPIO_InitStructure;
	//ʱ���ṹ�壬���ڶ�ʱ���Ļ�����������
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	//��ʱ������ȽϽṹ��
	TIM_OCInitTypeDef TIM_OCInitStructure;
	
	//�߼���ʱ��TIM1ʱ��ʹ��
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1,  ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	//����GPIOB������ʱ�ӣ���AHB1ʱ��Դ��Ӧ
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	
	//����GPIO���� 
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;  //�������
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_OUT;   //���ģʽ
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;   //����ģʽ���
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_DOWN;  //�������
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	//�����ת������ʱ��
	GPIO_ResetBits(GPIOD, GPIO_Pin_11);
	
	
	//���������Ķ�ʱ��TIM3��GPIO��ʼ��
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;   //����ģʽ
	GPIO_InitStructure.GPIO_Pin	 = GPIO_Pin_8;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	//ָ�����Ÿ��ù���
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource8, GPIO_AF_TIM1);
	
	//TIM3��ʱ����ģʽ����
	//������������0-2799��2800��
	TIM_TimeBaseStructure.TIM_Period 	= 2799u;   
	//ͨ�ö�ʱ��TIMxCLK = 168MHz
	//�趨��ʱ����Ƶ��ΪTIMxCLK/(TIM_Prescaler+1)����ʱ�Ԥ���Ƶ
	TIM_TimeBaseStructure.TIM_Prescaler = 0;
	//����ʱ�ӷ�Ƶϵ��������Ƶ
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	//���ϼ���
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	//���ظ�����
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);
	
	//�������PWM1ģʽ���������Ч��ƽ���ﵽ�趨ֵ��ı��ƽ
	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
	//�����ʹ��
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
	//���ñȽ�ֵ����ʱ��ռ�ձ�1400/2800=50%
	TIM_OCInitStructure.TIM_Pulse = 1399u;
	//�Ƚ�������ԣ��͵�ƽ��Ч
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
	//����������ԣ��ߵ�ƽ��Ч
	TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCPolarity_High;
	//����״̬ʱ���0
	TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Reset;
	//����״̬ʱ���������1
	TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCNIdleState_Set;
	//ͨ����ʼ��
	TIM_OC1Init(TIM1, &TIM_OCInitStructure);
	
	//ʹ��ͨ����װ��
	TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Enable);
	
	//ʹ�ܶ�ʱ��
	TIM_Cmd(TIM1, ENABLE);
	//�������ʹ��
	TIM_CtrlPWMOutputs(TIM1, ENABLE);
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
void udpcallback(void *arg,struct udp_pcb *pcb,struct pbuf *p,ip_addr_t *addr,u16_t port)
{
	//������������ݼ��뵽���������
	struct net_path *net = (struct net_path *)arg;
	if((net->tail+1)%laserbufsize!=net->front)//����û����
	{
		net->pbufque[net->tail]= p;
		net->remoteip_addr = *addr;
		net->remoteport =  port;
		
		sys_mutex_lock(&(net->bufmutex));
		net->tail = (net->tail+1)%laserbufsize;
		sys_mutex_unlock(&(net->bufmutex));
		
		motor_rec_trypost();
	}
}

//����Ŀ����̺߳��������߳̿�����ֱ�ӽ���˺������൱���̵߳����main����
void motorCtrl_thread(void *msg)
{
	//�������ӿڣ�ʵ������ת��
	struct net_path netpath;
	struct pbuf *p;
	struct msg_head recvMsg;
	uint8_t recvMsgType;
	err_t error;
	
	//��ʼ�����Ƶ����pwm���
	PWMInit();
	
	//���õ�����ٶ�
	StepMotor_SpeedSet(2);
	
	//netpath��ʼ��
	netpath.front = netpath.tail = 0;
	netpath.udppcb = udp_new();   //udp���ƿ飬������socket
	netpath.localport = motorlocalport;  //���ض˿ڣ�20000
	netpath.remoteport = motorremoteport; //Զ�̶˿ڣ�20000
	IP4_ADDR(&(netpath.remoteip_addr),hostip_addr0,hostip_addr1,hostip_addr2,hostip_addr3);   //Զ��ip��ַ192.168.1.101
	error = sys_mutex_new(&(netpath.bufmutex));//���ڶ�дָ��Ļ���
	
	if(netpath.udppcb==NULL)
	{
		printf("creat motor udppcb fail!\n");
		return ;
	}
	if(error!=ERR_OK)
	{
		printf("new motor netpath.bufmutex create fail!\n");
		return;
	}
	
	//�ص�������ע��
	udp_recv(netpath.udppcb,udpcallback,&netpath);
	//�󶨵��������е�ip�ϣ��˿ں�20000
	udp_bind(netpath.udppcb,IP_ADDR_ANY,motorlocalport);
	
	for(;;)
	{
		while(netpath.front!=netpath.tail)
		{
			p = netpath.pbufque[netpath.front];//��ȡҪ����ı���
			
			//�õ���Ϣͷ
			pbuf_copy_partial(p,&recvMsg,sizeof(recvMsg),0);
			//��Ϣͷ������Ϣ����
			recvMsgType = recvMsg.msg_type;
			if(recvMsgType<MAX_MSG_HANDLER)
				recvMsg.type_dscr = MSG_ACK;   
			else if(recvMsgType==HAND_SHAKE)
			{
				recvMsg.type_dscr = MSG_ACK;
				state_para.hostReady = true;
				recvMsgType = MAX_MSG_HANDLER-1;
			}
			else
			{
				recvMsg.type_dscr = MSG_ERR;
				recvMsgType = MAX_MSG_HANDLER-1;
			}
			
			//���Ĵ���ʹ�ú������飬ִ������
			msg_handler[recvMsgType](&netpath,p);
			//��Ϣ�������ݰ���
			pbuf_take(p,&recvMsg,sizeof(recvMsg));
			
			//����λ�����Ƶ������Ļظ�
			udp_sendto(netpath.udppcb,p,&netpath.remoteip_addr,netpath.remoteport);
			//�ͷſռ䣬��ʵ�ڽ��պ������ͷ���
			pbuf_free(p);
			
			//ָ��ĵ���
			sys_mutex_lock(&(netpath.bufmutex));
			netpath.front = (netpath.front+1)%laserbufsize;
			sys_mutex_unlock(&(netpath.bufmutex));
		}
		motor_rec_fetch();//�ȴ����ݵĴ���
	}
}

void motorCtrl_Init(void)
{
	if(sys_mbox_new(&motorCtrlQueue,10)!=ERR_OK)
	{
		printf("cteate motorCtrlQueue fail!\n");
	}
	sys_thread_new("motorCtrl_thread",motorCtrl_thread,NULL,DEFAULT_THREAD_STACKSIZE*2,osPriorityNormal);
}

