/**********************
*与时间戳测试有关的程序代码
*只要就是向上位机发送一些测
*试所得时间戳的信息
************************/

#include "timeStamp.h"
#include "ptpd.h"

//定义测试使用的数据的变量
#if !defined (__CC_ARM)
#error "__CC_ARM undefined!"
#else
__align(4) msg_time TIME_TEST;
#endif

extern PtpClock ptpClock;//ptp当前时钟数据，需要将至传输到上位机
extern void rt_tsk_lock(void);
extern void rt_tsk_unlock(void);

sys_mbox_t rec_queue_time;//用于接收数据的消息邮箱startstart

timeState timestate;

//指示采集线程的创建
typedef enum thread_state{
	stopstate=0x00,
	defaultstate=0x00,
	startstate,
	createstate,
	resetstate,
}thread_state;


thread_state dataflag = stopstate;


#define TIME_TEST_PORT 10002


//为了测试下面的时间同步的测试的方便性
void time_queue_trypost(void)
{
	sys_mbox_trypost(&rec_queue_time,NULL);
}

void time_queue_fecth(void)
{
	sys_arch_mbox_fetch(&rec_queue_time,NULL,100);//等待一个延时的时间消息
}


//获取当前时间的函数将至写入timeoffset中
void set_timeoffset(struct timeoffset *time)
{
	struct ptptime_t *ptptime = &(time->curtime);
	ETH_PTPTime_GetTime(ptptime);//获取当前的时间
	
	time->to_sec = ptpClock.currentDS.offsetFromMaster.seconds;//偏移的秒数
	time->to_nsec = ptpClock.currentDS.offsetFromMaster.nanoseconds;//偏移的纳秒数
}

//为了保持ptp的完整性，特意定义时间戳的采集线程
void datacollection_thread(void *msg)
{
	struct timeoffset *ts;
	
	#ifdef TICK_DELAY
	uint32_t tick;
	#endif
	
	TIME_TEST.head = TIME_TEST.tail = 0;
	TIME_TEST.index = 0;
	for(;;)
	{
		#ifdef TICK_DELAY
		tick = osKernelSysTick();
		#endif
		
		if(dataflag==stopstate)
			goto mmdelay;
		
		if(((TIME_TEST.tail+1)&(TV_BUF_SIZE-1))!=TIME_TEST.tail)
		{
			if(TIME_TEST.index==TV_TIMEOFFSET)
			{
				rt_tsk_lock();
				TIME_TEST.index = 0;
				TIME_TEST.tail = (TIME_TEST.tail+1)&(TV_BUF_SIZE-1);
				rt_tsk_unlock();
			}
			//获取当前的时间
			
			ts = &(TIME_TEST.time[TIME_TEST.tail].offset[TIME_TEST.index++]);
			set_timeoffset(ts);
		}
		
		mmdelay:
		#ifdef TICK_DELAY
		while(osKernelSysTick()-tick<= osKernelSysTickMicroSec(50*1000));
		#else
		sys_msleep(100);
		#endif
	}
}

//定义接收的timetest回调函数
/*
typedef void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
    ip_addr_t *addr, u16_t port);*/
void timetest_callback(void *arg,struct udp_pcb *pcb,struct pbuf *p,ip_addr_t *addr,u16_t port)
{
	net_Path * netPath = (net_Path *) arg;
	
	printf("timetest_callback call!\n");
	
	//将接收的pbuf数据存入缓冲队列
	sys_mutex_lock(&(netPath->bufque_mutex));
	//rt_tsk_lock();
	if((netPath->tail+1)%PBUF_QUEUE_SIZE!=netPath->head)
	{
		(netPath->bufque)[netPath->tail] = p;
		netPath->tail = (netPath->tail+1)&(PBUF_QUEUE_SIZE-1);
		netPath->remoteip = *addr;//目的ip地址
		netPath->remoteport = port;//目的端口
	}
	//rt_tsk_unlock();
	sys_mutex_unlock(&(netPath->bufque_mutex));
	
	sys_mbox_trypost(&rec_queue_time,NULL);//发送消息邮箱
}

//处理接收到的报文
void handletime(struct pbuf *p,net_Path *netpath)
{
	struct msghead head;
	pbuf_copy_partial(p,&head,sizeof(head),0);
	
	printf("head.msg_type:%d,head.msg_resp:%d\n",head.msg_type,head.msg_resp);
	
	switch(head.msg_type)
	{
		case connectTest:
		case hostRead:
			if(head.msg_type==hostRead)
			{
				timestate.hostready = TOK;
				timestate.devreset = TERR;
				dataflag = startstate;
				netpath->remote_trans_port = netpath->remoteport;
			}
			head.msg_resp = RESPOK;
			pbuf_take(p,&head,sizeof(head));
			udp_sendto(netpath->udppcb,p,&(netpath->remoteip),netpath->remoteport);//应答报文
			
			break;
		case devReset:
			timestate.devreset = TOK;
			timestate.hostready = TERR;
			dataflag = resetstate;
			break;
		default:
			break;
	}
}


//ptp时间测试的函数的创建为了处理接收到的数据，所以创建消息队列
void time_thread(void *mag)
{
	struct pbuf * p , *msgbuf,*last_pbuf,*msgpacket;
	net_Path netPath;
	uint8_t error;
	static uint16_t msg_sn;
	struct msghead * head;
	struct msghead respreset;
	
	netPath.head = netPath.tail =0;
	netPath.unicast.addr = 0x00000000;
	netPath.port = TIME_TEST_PORT;
	netPath.udppcb = udp_new();//创建udp控制块
	
	error=sys_mutex_new(&netPath.bufque_mutex);
	if(error)
	{
		printf("netPath.bufque_mutex create error.\n");
		return;
	}
	error=sys_mutex_new(&TIME_TEST.mutex);
	if(error)
	{
		printf("TIME_TEST.mutex create error.\n");
		return;
	}
	
	timestate.devreset = TERR;
	timestate.hostready = TERR;
	
	if(netPath.udppcb==NULL)
	{
		printf("time_thread alloc memp fail!\n");
		return;
	}
	
	//回调函数的注册
	udp_recv(netPath.udppcb,timetest_callback,&netPath);
	//端口绑定
	udp_bind(netPath.udppcb,IP_ADDR_ANY,netPath.port);
	
	//创建pbuf变量用于发送存储的时间测试的量,从传输层开始分配数据
	p = pbuf_alloc(PBUF_TRANSPORT,sizeof(struct msgtime),PBUF_ROM);
	
	sys_thread_new("datacollection_thread",datacollection_thread,NULL,DEFAULT_THREAD_STACKSIZE,osPriorityBelowNormal);
	
	for(;;)
	{
		while(netPath.head!=netPath.tail)//相关接收数据的处理
		{
			//rt_tsk_lock();
			sys_mutex_lock(&(netPath.bufque_mutex));
			msgbuf = netPath.bufque[netPath.head];
			netPath.head = (netPath.head+1)%PBUF_QUEUE_SIZE;
			sys_mutex_unlock(&(netPath.bufque_mutex));
			//rt_tsk_unlock();
			
			//解析报文的头,并处理相关报文
			handletime(msgbuf,&netPath);
			
			//释放接收到的报文
			pbuf_free(msgbuf);
		}
		
		if(timestate.hostready==TOK&&dataflag==startstate)
		{
			if(TIME_TEST.head!=TIME_TEST.tail)//此时发送的缓冲队列中的元素不为空
			{
				head = &(TIME_TEST.time[TIME_TEST.head].head);
				head->msg_sn = msg_sn++;
				head->msg_type = TIME_OFF;
				head->msg_resp = first_middle_data;
				p->payload = (int8_t *)&(TIME_TEST.time[TIME_TEST.head]);
				udp_sendto(netPath.udppcb,p,&netPath.remoteip,netPath.remote_trans_port);
				
				//rt_tsk_lock();
				sys_mutex_lock(&TIME_TEST.mutex);
				TIME_TEST.head = (TIME_TEST.head+1)&(TV_BUF_SIZE-1);
				sys_mutex_unlock(&TIME_TEST.mutex);
				//rt_tsk_unlock();	
			}
		}
		else if(timestate.devreset==TOK&&dataflag==resetstate)
		{
			while(TIME_TEST.head!=TIME_TEST.tail)
			{
				struct msghead * head = &(TIME_TEST.time[TIME_TEST.head].head);
				head->msg_sn = msg_sn++;
				head->msg_type = TIME_OFF;
				head->msg_resp = first_middle_data;
				p->payload = (int8_t *)&(TIME_TEST.time[TIME_TEST.head]);
				udp_sendto(netPath.udppcb,p,&netPath.remoteip,netPath.remote_trans_port);
				
				//rt_tsk_lock();
				sys_mutex_lock(&TIME_TEST.mutex);
				TIME_TEST.head = (TIME_TEST.head+1)&(TV_BUF_SIZE-1);
				sys_mutex_unlock(&TIME_TEST.mutex);
				//rt_tsk_unlock();
			}
			//发送最后一个数据包
			head = &(TIME_TEST.time[TIME_TEST.head].head);
			head->msg_sn = msg_sn++;
			head->msg_type = TIME_OFF;
			head->msg_resp = last_data;
			
			last_pbuf = pbuf_alloc(PBUF_TRANSPORT,sizeof(struct msghead)+\
				sizeof(struct timeoffset)*TIME_TEST.index,PBUF_POOL);
			pbuf_take(last_pbuf,&(TIME_TEST.time[TIME_TEST.head]),\
			sizeof(struct msghead)+sizeof(struct timeoffset)*TIME_TEST.index);
			
			udp_sendto(netPath.udppcb,last_pbuf,&(netPath.remoteip),netPath.remote_trans_port);
			
			pbuf_free(last_pbuf);
			
			TIME_TEST.index = 0;
			TIME_TEST.head = TIME_TEST.tail=0;
			timestate.hostready = TERR;
			timestate.devreset = TERR;
			//给上位机一个复位成功的响应
			msgpacket = pbuf_alloc(PBUF_TRANSPORT,sizeof(struct msghead),PBUF_ROM);
			respreset.msg_sn = msg_sn++;
			respreset.msg_type = devReset;
			respreset.msg_resp = RESPOK;
			msgpacket->payload = &respreset;
			udp_sendto(netPath.udppcb,msgpacket,&netPath.remoteip,netPath.remoteport);
			pbuf_free(msgpacket);
			dataflag = stopstate;
		}
		sys_arch_mbox_fetch(&rec_queue_time,NULL,100);
	}
}

void time_init(void)
{
	if(sys_mbox_new(&rec_queue_time,8))
	{
		printf("create rec_queue_time fail!\n");
	}
	sys_thread_new("time_thread",time_thread,NULL,DEFAULT_THREAD_STACKSIZE*2,osPriorityAboveNormal);//创建线程
}


