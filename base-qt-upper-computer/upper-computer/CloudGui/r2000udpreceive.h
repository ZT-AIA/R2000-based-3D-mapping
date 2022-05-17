#ifndef R2000UDPRECEIVE_H
#define R2000UDPRECEIVE_H

#include <QObject>
#include <QUdpSocket>
//#include <QTimer>
#include "globalvariable.h"
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>

#define laserConn_SUCCESS 0xF0
#define laserConn_FAILED 0xFF
#define laserConn_NETERROR 0x01
#define CONNECT_LASER 0x00003f00
#define CONNECT_STOP 0x00001f00

class QTimer;

class R2000UdpReceive : public QObject
{
    Q_OBJECT
public:
    explicit R2000UdpReceive(QObject *parent = 0);
    ~R2000UdpReceive();
    void stopTransmission();
    //void processPointCloudMsg(pcl::PointXYZHSV *p);
//    void processPointCloudMsg(pcl::PointXYZI *p);
//    void laserCloudHandle(laserdata);

private:
    QUdpSocket *laserUdpSocket;
    QTimer *receiveTimer;
    QTimer *endTimer;
    QTimer *receiveWatchdogTimer;
    bool isConnect;
    int recallnum;

    int receviceNum;
/*
    //处理接收到的原始点云数据
    bool systemInited;//是否已经接收到点云，确立连续模式的初始点
    double initTimestamp;//初始时间戳
    double timeScanCur;//当前处理的点云数据的时间戳
    double timeScanLast;//上次处理的点云数据的时间戳
    //当前脉冲数
    int32_t curPluseCnt;//当前帧转台电机的脉冲数
    int32_t lastPluseCnt;//上一帧转台电机的脉冲数
    double  avg_angle;//每个点之间的转台平均脉冲数
    //int32_t  RotPluseCnt;//
    double  RotAngle;//每个点对应的转台实际角度
    //int32_t pluselast;//
    //为了定义将一次扫描所得数据合成一次扫描，即一次扫描的所得数据可能分为多个数据包传输，所以需要将数据合在一起当成一次扫描
    std::vector<int>::size_type scan_per_count;
*/
signals:
    void newData();
    void connectSuccess(bool);
    void connectError(quint8 err);
    void stopScanSuccess();
    void stopHorizontalMotorSignal();//到达光电开关的位置信号
    void stopHorizontalMotorSignal1();

public slots:
    void startConnect();//与激光扫描板连接
    void startScan();//开始接收数据
    void rece_Timeout();
    void end_Timeout();
    void udpReadData();//对接收到的数据进行处理
    void neterror();
    void stopScan();
};

#endif // R2000UDPRECEIVE_H
