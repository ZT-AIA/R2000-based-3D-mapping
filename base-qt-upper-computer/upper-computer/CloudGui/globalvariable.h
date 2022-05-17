#ifndef GLOBALVARIABLE
#define GLOBALVARIABLE
#include "pcl/point_types.h"
#include "pcl/point_cloud.h"
#include <QSemaphore>
#include <QQueue>
#include <QString>
#include <QTime>

//new add
using std::string;
using std::vector;
using std::list;

namespace CP{
extern QString IpAddress;
extern QSemaphore UsedSpace;
extern QQueue< QList<pcl::PointXYZI> > CloudQueue;
extern pcl::PointCloud<pcl::PointXYZI>::Ptr cloud1;
extern pcl::PointCloud<pcl::PointXYZI>::Ptr cloud2;

//new add,接收从R2000扫描器中读取的点云
extern QQueue< QList<pcl::PointXYZHSV> > R2000CloudQueue;
extern pcl::PointCloud<pcl::PointXYZHSV>::Ptr R2000Cloud;
extern QSemaphore R2000UsedSpace;
extern const uint16_t laserClientPort;
}

namespace Nav{
typedef struct{
    float q0;
    float q1;
    float q2;
    float q3;
}Quate;
extern QSemaphore QuateSpace;
extern QSemaphore LocationXYZ_Space;
extern QQueue<pcl::PointXYZ> LocationXYZ_Queue;
extern QQueue<Quate> Quaternion;
extern QString IpAddress;
}

//new add
struct ntp64{
    int sec;//整数部分
    int nsec;//小数部分

    ntp64(){}
    ntp64(int _sec,int _nsec):sec(_sec),nsec(_nsec){}
    ntp64(ntp64 & other):sec(other.sec),nsec(other.nsec){}
    ntp64& operator=(const ntp64&);
    double tosec();
    static ntp64 tostamp(double);
};

struct datahead{
    uint16_t magic;//魔术的字节(0xa25c),标记者一个数据包的开始
    uint16_t packet_type;//扫描数据分组的类型，ABC
    uint32_t packet_size;//数据包的整体大小(以字节为单位，包括头部和有效数据载荷）
    uint16_t header_size;//数据包的头部的大小(以字节为单位，也就是有效载荷数据的偏移量)

    uint16_t scan_number;//扫描的序列号(每扫描一次增加1，从0开始，溢出)
    uint16_t packet_number;//包的序列号(一次扫描的数据包的计数，从1开始)
    ntp64 timestamp_raw;//在本次数据包中首次接收到第一个点的时间戳
    ntp64 timestamp_sync;//在本次数据包中的首次接收到第一个点的同步时间戳，注意当前版本是不可用的

    uint32_t status_flags;//扫描的状态的标志
    uint32_t scan_freq;//头部转动的频率(1/1000Hz)
    uint16_t num_points_scan;//一次完整扫描的采样点
    uint16_t num_points_packet;//本数据包中的采样点数

    uint16_t first_index;//当前数据包(分组)中的第一个扫描点的索引
    int32_t first_angle;//该分组中第一个扫描点的绝对角度(1/10000°)
    int32_t angular_increment;//两个扫描点间的增量角度(1/10000°)（逆时针：正增量，顺时针：负增量）

    int32_t iq_input;//保留
    int32_t iq_overload;//保留

    ntp64 iq_timestamp_raw;//在本次数据包中首次接收到第一个点的时间戳
    ntp64 iq_timestamp_sync;

    //uint8_t  header_padding[];//padding
    datahead(){}
    datahead(const datahead&);
    datahead& operator=(const datahead&);
};

struct laserdata{
    datahead head;
    vector<uint32_t> data;//单位mm，存储接收到的距离数据
    laserdata(){}
    laserdata(const laserdata&);
    laserdata& operator=(laserdata&);
    laserdata& operator=(const laserdata&);
};

//new add
extern QQueue<laserdata> rawLaserDataQueue;
extern QList<laserdata> rawLaserData;//存储接收到的原始激光扫描器数据
extern QSemaphore useRawLaserData;//对应的信号量
extern QQueue< QList<laserdata> > rawLaserQueueList;
extern bool isSingleCircleReset;
extern bool isSingleCircleStartScan;
extern bool isContinuousModeStart;
extern bool singleCircleResetSuccess;
extern QTime signleCircleTimer;
#endif // GLOBALVARIABLE

