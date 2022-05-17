#ifndef UDPOBJECT_H
#define UDPOBJECT_H

#include <QObject>
#include <QUdpSocket>
#include "pcl/point_types.h"

#define MSG_CONNECT 0x00003F00
#define MSG_SET_SPEED 0x00050000
#define MSG_START_SCAN 0x00000000
#define MSG_STOP_SCAN 0x00000100
#define MSG_AVG_TIMES 0x00070000

#define MSG_INTERVAL_START_SCAN 0x000B0000
#define MSG_SINGLE_POINT_SCAN 0x000C0000
#define MSG_H_2D_SCAN     0x000D0000
#define MSG_V_2D_SCAN     0x000E0000
enum SCAN_MODE{
    CONTINUOUS,
    INTERVAL,
    SINGLE_POINT,
    HV_2D,
    IDLE//空闲
};

class QTimer;

class UdpObject : public QObject
{
    Q_OBJECT
public:
    explicit UdpObject(QObject *parent = 0);
    ~UdpObject();
    void setIntervalScanPoint(QList<float> list) { ScanPoint = list;}
    void clearIntervalScanPoint(void) { ScanPoint.clear();}
    void setSinglePoint(float H,float V){ H_angle = H;V_angle = V;}
    void set_2D_SCAN(float start,float stop,float v){H_2D_start = start; H_2D_stop = stop;V_2D_angle = v;}
    void setSpeed(float h,float v){H_Speed = h;V_Speed = v;}
private:
    QUdpSocket *udpsocket;
    float updateAngle;
    float HorizontalAngle;
    QTimer *Msg_Timer;
    QList<float> ScanPoint;//多段模型的间隔点
    float H_angle; //单点模式的水平角度0-360°
    float V_angle;//单点模式的垂直角度 18-64°
    float H_2D_start;//二维扫描时的水平开始点角度 90°
    float H_2D_stop;//二维扫描时的水平停止点角度
    float V_2D_angle;//二维扫描时的垂直参数角 90°
    double distance;//保存单点模式的测量平均值
    quint16 num;//平均值计数
    bool isLast;//多段扫描的最后一段（用于间断扫描与二维扫描模式中）
    float H_Speed; //水平速度
    float V_Speed;//垂直速度
public:
    SCAN_MODE ScanMode;
signals:
    void stopScan(void);
    void currentAngle(float,float);
    void showDistance(double);//单点测量距离值显示更新
    void update(void);
    void finishOneSegment(bool);//多段扫描时一段扫描结束信号,参数为true时为最后一段
    void finish_H_2Dscan(void);//二维模式中完成水平扫描
public slots:
    void startScan(void);//连续模式
    void udpReadyread(void);
    void Msg_Timerout(void);
    void IntervalStartScan(void);//间隔模式
    void SinglePointScan(void);//单点测量模式
    void Scan2D(void);//二维扫描模式
private:
   void ProcessPoint(QDataStream &in,QList<pcl::PointXYZI> &cloudlist);//点云计算
   void AvgDistance(QDataStream &in);//单点测量模式下做平均
   void init(void);//UDP传输初始化
   void sendSpeed(void);//设置扫描速度
};

#endif // UDPOBJECT_H
