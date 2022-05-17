/**********************
*��ʱ��������йصĳ������
*ֻҪ��������λ������һЩ��
*������ʱ�������Ϣ
************************/

#include "timeStamp.h"
#include "ptpd.h"

//�������ʹ�õ����ݵı���
#if !defined (__CC_ARM)
#error "__CC_ARM undefined!"
#else
__align(4) msg_time TIME_TEST;
#endif

extern PtpClock ptpClock;//ptp��ǰʱ�����ݣ���Ҫ�������䵽��λ��
extern void rt_tsk_lock(void);
extern void rt_tsk_unlock(void);

sys_mbox_t rec_queue_time;//���ڽ������ݵ���Ϣ����startstart

timeState timestate;

//ָʾ�ɼ��̵߳Ĵ���
typedef enum thread_state{
	stopstate=0x00,
	defaultstate=0x00,
	startstate,
	createstate,
	resetstate,
}thread_state;


thread_state dataflag = stopstate;


#define TIME_TEST_PORT 10002


//Ϊ�˲��������ʱ��ͬ���Ĳ��Եķ�����
void time_queue_trypost(void)
{
	sys_mbox_trypost(&rec_queue_time,NULL);
}

void time_queue_fecth(void)
{
	sys_arch_mbox_fetch(&rec_queue_time,NULL,100);//�ȴ�һ����ʱ��ʱ����Ϣ
}


//��ȡ��ǰʱ��ĺ�������д��timeoffset��
void set_timeoffset(struct timeoffset *time)
{
	struct ptptime_t *ptptime = &(time->curtime);
	ETH_PTPTime_GetTime(ptptime);//��ȡ��ǰ��ʱ��
	
	time->to_sec = ptpClock.currentDS.offsetFromMaster.seconds;//ƫ�Ƶ�����
	time->to_nsec = ptpClock.currentDS.offsetFromMaster.nanoseconds;//ƫ�Ƶ�������
}

//Ϊ�˱���ptp�������ԣ����ⶨ��ʱ����Ĳɼ��߳�
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
			//��ȡ��ǰ��ʱ��
			
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

//������յ�timetest�ص�����
/*
typedef void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
    ip_addr_t *addr, u16_t port);*/
void timetest_callback(void *arg,struct udp_pcb *pcb,struct pbuf *p,ip_addr_t *addr,u16_t port)
{
	net_Path * netPath = (net_Path *) arg;
	
	printf("timetest_callback call!\n");
	
	//�����յ�pbuf���ݴ��뻺�����
	sys_mutex_lock(&(netPath->bufque_mutex));
	//rt_tsk_lock();
	if((netPath->tail+1)%PBUF_QUEUE_SIZE!=netPath->head)
	{
		(netPath->bufque)[netPath->tail] = p;
		netPath->tail = (netPath->tail+1)&(PBUF_QUEUE_SIZE-1);
		netPath->remoteip = *addr;//Ŀ��ip��ַ
		netPath->remoteport = port;//Ŀ�Ķ˿�
	}
	//rt_tsk_unlock();
	sys_mutex_unlock(&(netPath->bufque_mutex));
	
	sys_mbox_trypost(&rec_queue_time,NULL);//������Ϣ����
}

//������յ��ı���
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
			udp_sendto(netpath->udppcb,p,&(netpath->remoteip),netpath->remoteport);//Ӧ����
			
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


//ptpʱ����Եĺ����Ĵ���Ϊ�˴�����յ������ݣ����Դ�����Ϣ����
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
	netPath.udppcb = udp_new();//����udp���ƿ�
	
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
	
	//�ص�������ע��
	udp_recv(netPath.udppcb,timetest_callback,&netPath);
	//�˿ڰ�
	udp_bind(netPath.udppcb,IP_ADDR_ANY,netPath.port);
	
	//����pbuf�������ڷ��ʹ洢��ʱ����Ե���,�Ӵ���㿪ʼ��������
	p = pbuf_alloc(PBUF_TRANSPORT,sizeof(struct msgtime),PBUF_ROM);
	
	sys_thread_new("datacollection_thread",datacollection_thread,NULL,DEFAULT_THREAD_STACKSIZE,osPriorityBelowNormal);
	
	for(;;)
	{
		while(netPath.head!=netPath.tail)//��ؽ������ݵĴ���
		{
			//rt_tsk_lock();
			sys_mutex_lock(&(netPath.bufque_mutex));
			msgbuf = netPath.bufque[netPath.head];
			netPath.head = (netPath.head+1)%PBUF_QUEUE_SIZE;
			sys_mutex_unlock(&(netPath.bufque_mutex));
			//rt_tsk_unlock();
			
			//�������ĵ�ͷ,��������ر���
			handletime(msgbuf,&netPath);
			
			//�ͷŽ��յ��ı���
			pbuf_free(msgbuf);
		}
		
		if(timestate.hostready==TOK&&dataflag==startstate)
		{
			if(TIME_TEST.head!=TIME_TEST.tail)//��ʱ���͵Ļ�������е�Ԫ�ز�Ϊ��
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
			//�������һ�����ݰ�
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
			//����λ��һ����λ�ɹ�����Ӧ
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
	sys_thread_new("time_thread",time_thread,NULL,DEFAULT_THREAD_STACKSIZE*2,osPriorityAboveNormal);//�����߳�
}


