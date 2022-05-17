#include "globalvariable.h"

namespace CP{
pcl::PointCloud<pcl::PointXYZI>::Ptr cloud1(new pcl::PointCloud<pcl::PointXYZI>);
pcl::PointCloud<pcl::PointXYZI>::Ptr cloud2(new pcl::PointCloud<pcl::PointXYZI>);
QSemaphore UsedSpace(0);
QQueue< QList<pcl::PointXYZI> > CloudQueue;
QString IpAddress = "192.168.1.10" ;

//new add,接收从R2000扫描器中读取的点云
QQueue< QList<pcl::PointXYZHSV> > R2000CloudQueue;
pcl::PointCloud<pcl::PointXYZHSV>::Ptr R2000Cloud(new pcl::PointCloud<pcl::PointXYZHSV>);
QSemaphore R2000UsedSpace(0);
const uint16_t laserClientPort = 8010;
}

namespace Nav{
QSemaphore QuateSpace(0);
QSemaphore LocationXYZ_Space(0);
QQueue<pcl::PointXYZ> LocationXYZ_Queue;
QQueue<Quate> Quaternion;
QString IpAddress = "192.168.1.16" ;
}

//new add
QQueue<laserdata> rawLaserDataQueue;
QList<laserdata> rawLaserData;//存储接收到的原始激光扫描器数据
QSemaphore useRawLaserData(0);//对应的信号量
QQueue< QList<laserdata> > rawLaserQueueList;
bool isSingleCircleReset = false;//单圈模式的复位标志
bool isSingleCircleStartScan = false;//单圈模式的开始标志
bool isContinuousModeStart = false;//连续模式的开始标志
bool singleCircleResetSuccess = false;//复位成功的标志
QTime signleCircleTimer;//单圈模式的定时器

//new add
double ntp64::tosec()
{
    return (double)sec+1e-9*(double)nsec;
}

ntp64 ntp64::tostamp(double time)
{
    int sec = time;
    int nsec = (time-sec)*1e9;
    ntp64 stamp(sec,nsec);
    return stamp;
}

ntp64& ntp64::operator=(const ntp64 &other)
{
    if(&other!=this)
    {
        sec=other.sec;
        nsec=other.nsec;
    }
    return *this;
}

datahead::datahead(const datahead &other)
{
    magic = other.magic;
    packet_type = other.packet_type;
    packet_size = other.packet_size;
    header_size = other.header_size;
    scan_number = other.scan_number;
    packet_number = other.packet_number;
    timestamp_raw = other.timestamp_raw;
    timestamp_sync = other.timestamp_sync;
    status_flags = other.status_flags;
    scan_freq = other.scan_freq;
    num_points_scan = other.num_points_scan;
    num_points_packet = other.num_points_packet;
    first_index = other.first_index;
    first_angle = other.first_angle;
    angular_increment = other.angular_increment;
    iq_input = other.iq_input;
    iq_overload = other.iq_overload;

    iq_timestamp_raw = other.iq_timestamp_raw;
    iq_timestamp_sync = other.iq_timestamp_sync;
}

datahead& datahead::operator =(const datahead & other)
{
    if(this!=&other)
    {
        magic = other.magic;
        packet_type = other.packet_type;
        packet_size = other.packet_size;
        header_size = other.header_size;
        scan_number = other.scan_number;
        packet_number = other.packet_number;
        timestamp_raw = other.timestamp_raw;
        timestamp_sync = other.timestamp_sync;
        status_flags = other.status_flags;
        scan_freq = other.scan_freq;
        num_points_scan = other.num_points_scan;
        num_points_packet = other.num_points_packet;
        first_index = other.first_index;
        first_angle = other.first_angle;
        angular_increment = other.angular_increment;
        iq_input = other.iq_input;
        iq_overload = other.iq_overload;

        iq_timestamp_raw = other.iq_timestamp_raw;
        iq_timestamp_sync = other.iq_timestamp_sync;
    }
    return *this;
}

laserdata::laserdata(const laserdata&other):head(other.head),data(other.data){}

laserdata& laserdata::operator =(laserdata&other)
{
    if(&other!=this)
    {
        head = other.head;
        data = other.data;
    }
    return *this;
}

laserdata& laserdata::operator=(const laserdata& other)
{
    if(&other!=this)
    {
        head = other.head;
        data = other.data;
    }
    return *this;
}
