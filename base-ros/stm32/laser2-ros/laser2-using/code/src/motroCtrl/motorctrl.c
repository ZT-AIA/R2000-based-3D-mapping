#include "motorctrl.h"
#include "udp.h"
#include "pbuf.h"
#include "ip_addr.h"
#include "sys_arch.h"
#include "sys.h"
#include "laserCloud.h"
#include "navigation.h"
#include "dev.h"

//常量的定义
#define motorlocalport 20000
#define motorremoteport 20000
//上位机ip地址
#define hostip_addr0 192
#define hostip_addr1 168
#define hostip_addr2 1
#define hostip_addr3 101

//定义一个控制的消息的邮箱
sys_mbox_t  motorCtrlQueue;

//水平电机的参数
struct statePara state_para;

//定义一个速度的设置的全局的变量
struct motor_spd motorSpd={H_DEFAULT_SPD,V_DEFAULT_SPD};

static void motor_rec_trypost(void)
{
	sys_mbox_trypost(&motorCtrlQueue,NULL);//释放一个消息
}

static void motor_rec_fetch(void)
{
	sys_arch_mbox_fetch(&motorCtrlQueue,NULL,10);//等待消息邮箱
}

//报文信息处理函数
/* Message Handlers Declarations */
static stat_set scan_start	 (struct net_path *net, void *arg);
static stat_set scan_stop 	 (struct net_path *net, void *arg);
static stat_set motor_run 	 (struct net_path *net, void *arg);
static stat_set motor_stop	 (struct net_path *net, void *arg);
static stat_set dev_reset 	 (struct net_path *net, void *arg);
static stat_set motor_spd_set(struct net_path *net, void *arg);
/* ... */
static stat_set do_nothing 	 (struct net_path *net, void *arg);

//函数指针数组
stat_set (*msg_handler[MAX_MSG_HANDLER])(struct net_path *net, void *arg)=
{
	scan_start,scan_stop,motor_run,motor_stop,
	dev_reset,motor_spd_set,do_nothing,do_nothing
};

//下面两个函数主要用于研制三维激光扫描仪
static stat_set scan_start(struct net_path *net,void *arg)
{
	return RUN_OK;
}

static stat_set scan_stop(struct net_path *net,void *arg)
{
	return RUN_OK;
}

//水平电机的开关控制
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
	//转动电机
	StepMotor_SpeedSet(motorSpd.h_spd);
	//俯仰电机
	//StepMotor_SpeedSet(StepMotor_CH2, motorSpd.v_spd);
	
	return RUN_OK;
}

static stat_set do_nothing   (struct net_path *net,void *arg)
{
	return RUN_OK;
}

/*******************************************************************
*该文件主要用于控制电机的旋转即使用外设定时器产生PWM
*来驱动水平的电机的旋转，注意ARM输出的TTL电平，需要
*将其转换为差分信号
*脉冲引脚：PA8
*方向引脚：PD11
********************************************************************/
static void PWMInit(void){
	//引脚初始化结构体
	GPIO_InitTypeDef GPIO_InitStructure;
	//时基结构体，用于定时器的基础参数设置
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	//定时器输出比较结构体
	TIM_OCInitTypeDef TIM_OCInitStructure;
	
	//高级定时器TIM1时钟使能
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1,  ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	//开启GPIOB的外设时钟，由AHB1时钟源供应
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);
	
	//设置GPIO配置 
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;  //输出速率
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_OUT;   //输出模式
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;   //推挽模式输出
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_DOWN;  //下拉输出
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_Init(GPIOD, &GPIO_InitStructure);
	//电机旋转方向逆时针
	GPIO_ResetBits(GPIOD, GPIO_Pin_11);
	
	
	//给电机脉冲的定时器TIM3的GPIO初始化
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;   //复用模式
	GPIO_InitStructure.GPIO_Pin	 = GPIO_Pin_8;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	//指定引脚复用功能
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource8, GPIO_AF_TIM1);
	
	//TIM3定时器的模式配置
	//计数脉冲数，0-2799共2800次
	TIM_TimeBaseStructure.TIM_Period 	= 2799u;   
	//通用定时器TIMxCLK = 168MHz
	//设定定时器的频率为TIMxCLK/(TIM_Prescaler+1)，此时苍せ分频
	TIM_TimeBaseStructure.TIM_Prescaler = 0;
	//设置时钟分频系数，不分频
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	//向上计数
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	//不重复计数
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);
	
	//配置输出PWM1模式，先输出有效电平，达到设定值后改变电平
	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
	//主输出使能
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
	//配置比较值，此时的占空比1400/2800=50%
	TIM_OCInitStructure.TIM_Pulse = 1399u;
	//比较输出极性，低电平有效
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
	//互补输出极性，高电平有效
	TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCPolarity_High;
	//空闲状态时输出0
	TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Reset;
	//空闲状态时，互补输出1
	TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCNIdleState_Set;
	//通道初始化
	TIM_OC1Init(TIM1, &TIM_OCInitStructure);
	
	//使能通道重装载
	TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Enable);
	
	//使能定时器
	TIM_Cmd(TIM1, ENABLE);
	//主动输出使能
	TIM_CtrlPWMOutputs(TIM1, ENABLE);
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
void udpcallback(void *arg,struct udp_pcb *pcb,struct pbuf *p,ip_addr_t *addr,u16_t port)
{
	//将获得网络数据加入到缓冲队列中
	struct net_path *net = (struct net_path *)arg;
	if((net->tail+1)%laserbufsize!=net->front)//队列没有满
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

//电机的控制线程函数，此线程开启后直接进入此函数，相当于线程的入口main函数
void motorCtrl_thread(void *msg)
{
	//相关网络接口，实现数据转发
	struct net_path netpath;
	struct pbuf *p;
	struct msg_head recvMsg;
	uint8_t recvMsgType;
	err_t error;
	
	//初始化控制电机的pwm输出
	PWMInit();
	
	//设置电机的速度
	StepMotor_SpeedSet(2);
	
	//netpath初始化
	netpath.front = netpath.tail = 0;
	netpath.udppcb = udp_new();   //udp控制块，类似于socket
	netpath.localport = motorlocalport;  //本地端口，20000
	netpath.remoteport = motorremoteport; //远程端口，20000
	IP4_ADDR(&(netpath.remoteip_addr),hostip_addr0,hostip_addr1,hostip_addr2,hostip_addr3);   //远程ip地址192.168.1.101
	error = sys_mutex_new(&(netpath.bufmutex));//用于读写指针的互锁
	
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
	
	//回调函数的注册
	udp_recv(netpath.udppcb,udpcallback,&netpath);
	//绑定到本地所有的ip上，端口号20000
	udp_bind(netpath.udppcb,IP_ADDR_ANY,motorlocalport);
	
	for(;;)
	{
		while(netpath.front!=netpath.tail)
		{
			p = netpath.pbufque[netpath.front];//获取要处理的报文
			
			//得到消息头
			pbuf_copy_partial(p,&recvMsg,sizeof(recvMsg),0);
			//消息头中有消息类型
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
			
			//报文处理，使用函数数组，执行命令
			msg_handler[recvMsgType](&netpath,p);
			//信息复制数据包中
			pbuf_take(p,&recvMsg,sizeof(recvMsg));
			
			//对上位机控制电机命令的回复
			udp_sendto(netpath.udppcb,p,&netpath.remoteip_addr,netpath.remoteport);
			//释放空间，其实在接收函数中释放了
			pbuf_free(p);
			
			//指针的调整
			sys_mutex_lock(&(netpath.bufmutex));
			netpath.front = (netpath.front+1)%laserbufsize;
			sys_mutex_unlock(&(netpath.bufmutex));
		}
		motor_rec_fetch();//等待数据的处理
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

