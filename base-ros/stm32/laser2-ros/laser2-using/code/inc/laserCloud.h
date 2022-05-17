/**********************************************
*���ļ�ʵ�ֵĹ��ܾ���ʵ�֣��Ӽ���ɨ���ǵĻ�����ݺ�
*�ڸ�ģ����м���ʱ�������������ת������λ���Ĵ���
***********************************************/

#ifndef _LASERCLOUD_H
#define _LASERCLOUD_H

#pragma pack(push)
#pragma pack(4)		// Confirms 4Bytes alignment 

#include <stdlib.h>
#include <stdint.h>
#include "ethernetif.h"//��Ҫʹ�õ�ptptime_t��ʱ���
#include "ptpd.h"
#include "lwip/ip_addr.h"

//����һ�����ܵ������ݻ�����еĴ�С
#define laserbufsize 8

//��ʱ�õ���udp��ͨѶ��ע������������ڼ����״������
struct ntp64{
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
//������Ķ���Ŀ�֪������Ҫ�ڴ���ı����иı�timestamp_syncʱ����е�ʱ�䣬��ָ����ܵ��������뵼����Ϣģ���
//��̬��������ͬ��

//������ص�����Ľӿڣ���Ҫ���������ݵ�ת��
struct net_path{
	int front; //ͷ
	int tail;  //β
	void *pbufque[laserbufsize];
	struct udp_pcb *udppcb;
	uint16_t localport,remoteport;//���ض˿ں�,���ݱ��ķ��Ͷ˶˿ںź͸ñ���Ҫ���͵���λ����Զ�̵Ķ˿ں�
	struct ip_addr localip_addr,remoteip_addr;
	sys_mutex_t bufmutex;//���ڵ�front��tail��ֵ�ı��ʱ��ģ����������е���
};

extern int curPluseCnt;

extern void laserCloud_Init(void);

#pragma pack(pop)

#endif
