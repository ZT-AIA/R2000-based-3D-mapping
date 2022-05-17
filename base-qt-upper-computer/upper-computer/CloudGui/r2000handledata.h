#ifndef R2000HANDLEDATA_H
#define R2000HANDLEDATA_H

#include <QObject>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>

class R2000HandleData : public QObject
{
    Q_OBJECT
public:
    explicit R2000HandleData(QObject *parent = 0);
    void processPointCloudMsg(pcl::PointXYZI *p);

signals:
    void showData();
public slots:
    void laserCloudHandle();

private:
    //处理接收到的原始点云数据
    bool systemInited;//是否已经接收到点云，确立连续模式的初始点
    double initTimestamp;//初始时间戳
    double timeScanCur;//当前处理的点云数据的时间戳
    double timeScanLast;//上次处理的点云数据的时间戳
    //当前脉冲数
    int32_t curPluseCnt;//当前帧转台电机的脉冲数
    int32_t lastPluseCnt;//上一帧转台电机的脉冲数
    double  avg_angle;//每个点之间的转台平均脉冲数
    double  RotAngle;//每个点对应的转台实际角度
};

#endif // R2000HANDLEDATA_H
