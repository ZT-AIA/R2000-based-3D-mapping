#include "r2000handledata.h"
#include <QObject>
#include <QString>
#include <QtMath>
#include <QDebug>
#include "globalvariable.h"

#define horizontalMotor_Per_Pluse 36000//转台电机中的角度的计算，一圈所对应的脉冲数
#define dRotationAxis 0.06//扫描仪坐标系的原点距离水平电机旋转轴之间的距离的为dRotationAxis(不确定)

R2000HandleData::R2000HandleData(QObject *parent) : QObject(parent),
    systemInited(false),initTimestamp(0.0),timeScanCur(0.0),
    timeScanLast(0.0),curPluseCnt(0),lastPluseCnt(0),
    avg_angle(0.0),RotAngle(0.0)
{

}

void R2000HandleData::processPointCloudMsg(pcl::PointXYZI *p) {
    //安装的原因，扫描仪的实际x轴斜向下
    float x = p->y;
    float y =-p->x;
    float z = p->z;
    //扫描仪坐标系与载体坐标系将在俯仰角的偏差为45度
    float x1 = x;
    float y1 =  cos(M_PI/4)*y+sin(M_PI/4)*z;
    float z1 = -sin(M_PI/4)*y+cos(M_PI/4)*z;
    //转动角即偏航角的转动的变换
    float x2 =  cos(RotAngle)*x1+sin(RotAngle)*z1;
    float y2 = y1;
    float z2 = -sin(RotAngle)*x1+cos(RotAngle)*z1;
    //扫描坐标系的原点不在转动轴上，此时的距离设置的dRotationAxis
    float x3 = x2+dRotationAxis*sin(RotAngle);
    float y3 = y2;
    float z3 = z2+dRotationAxis*cos(RotAngle);

    //p->x = x3;
    //p->y = y3;
    //p->z = z3;
    //为了显示舒适，进行坐标变换
    p->x = z3;
    p->y = x3;
    p->z = y3;
}

void R2000HandleData::laserCloudHandle() {
    if(useRawLaserData.available() > 0) {
        int cnt = useRawLaserData.available();
        for(int i = 0; i < cnt; i++) {
            useRawLaserData.acquire();
            //if(!rawLaserData.isEmpty()) {
            //if(!rawLaserDataQueue.isEmpty()) {
            if(!rawLaserQueueList.isEmpty()) {
                //laserdata cloudData = rawLaserData.takeFirst();
                //laserdata cloudData = rawLaserDataQueue.dequeue();
                QList<laserdata> list = rawLaserQueueList.dequeue();
                QList<pcl::PointXYZI> pointList;
                for(laserdata cloudData : list) {

                if(!systemInited) {
                    systemInited = true;
                    initTimestamp = cloudData.head.timestamp_sync.tosec();
                }
                timeScanLast = timeScanCur;
                timeScanCur = cloudData.head.timestamp_sync.tosec();

                //QList<pcl::PointXYZHSV> pointList;
                //QList<pcl::PointXYZI> pointList;

                double first_angel = double(cloudData.head.first_angle)/10000;
                double angular_increment = double(cloudData.head.angular_increment)/10000;

                vector<uint32_t>::size_type dataSize = cloudData.data.size();

                lastPluseCnt = (cloudData.head.iq_input);
                curPluseCnt = (cloudData.head.iq_overload);

                avg_angle = (curPluseCnt-lastPluseCnt)/dataSize;
                qDebug()<<dataSize<<endl;//############
                //将激光原始点云转化为pcl存储的点云
                for(vector<int>::size_type index = 0; index < dataSize; index++) {
                    //pcl::PointXYZHSV cloudPoint;
                    pcl::PointXYZI cloudPoint;

                    double distance = double(cloudData.data[index])/1000;
                    if(distance > 30.001 && distance < 1.50)
                        continue;
                    double angle = first_angel + index * angular_increment;

                    cloudPoint.z = 0.0;
                    cloudPoint.x = distance * cos(qDegreesToRadians(angle));
                    cloudPoint.y = distance * sin(qDegreesToRadians(angle));

                    RotAngle = (double(lastPluseCnt) + avg_angle * index) / horizontalMotor_Per_Pluse * 2 * M_PI;
                    processPointCloudMsg(&cloudPoint);

                    pointList.push_back(cloudPoint);
                }
                //CP::R2000CloudQueue.enqueue(pointList);
                //CP::R2000UsedSpace.release();

                }
                CP::CloudQueue.enqueue(pointList);
                CP::UsedSpace.release();
                pointList.clear();
                emit showData();

            }
        }
    }
}
