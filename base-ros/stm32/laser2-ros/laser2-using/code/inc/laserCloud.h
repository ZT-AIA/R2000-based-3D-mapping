/**********************************************
*该文件实现的功能就是实现，从激光扫描仪的获得数据后
*在该模块的中加上时间戳，并把数据转发给上位机的处理
***********************************************/

#ifndef _LASERCLOUD_H
#define _LASERCLOUD_H

#pragma pack(push)
#pragma pack(4)		// Confirms 4Bytes alignment 

#include <stdlib.h>
#include <stdint.h>
#include "ethernetif.h"//需要使用到ptptime_t的时间的
#include "ptpd.h"
#include "lwip/ip_addr.h"

//定义一个接受到的数据缓冲队列的大小
#define laserbufsize 8

//此时用到的udp的通讯，注意其接受来自于激光雷达的数据
struct ntp64{
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
//由上面的定义的可知我们需要在传输的报文中改变timestamp_sync时间戳中的时间，是指与接受到的来自与导航信息模块的
//姿态数据数据同步

//定于相关的网络的接口，主要适用于数据的转发
struct net_path{
	int front; //头
	int tail;  //尾
	void *pbufque[laserbufsize];
	struct udp_pcb *udppcb;
	uint16_t localport,remoteport;//本地端口号,数据报文发送端端口号和该报文要发送的上位机的远程的端口号
	struct ip_addr localip_addr,remoteip_addr;
	sys_mutex_t bufmutex;//用于当front和tail的值改变的时候的，对整个队列的锁
};

extern int curPluseCnt;

extern void laserCloud_Init(void);

#pragma pack(pop)

#endif
