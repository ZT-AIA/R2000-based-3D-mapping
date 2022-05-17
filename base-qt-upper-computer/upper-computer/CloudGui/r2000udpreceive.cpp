#include "r2000udpreceive.h"
#include <QDataStream>
#include <QByteArray>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <QtMath>

#include <QTimer>

//#define scan_freq 50
//#define samples_per_scan 2400
//#define delttime 1/(scan_freq*samples_per_scan)//5.555556e-5//扫描点云中点间的时间差值

R2000UdpReceive::R2000UdpReceive(QObject *parent) :
    QObject(parent),isConnect(false),recallnum(0),receviceNum(0)
  /*,systemInited(false),initTimestamp(0.0),
    timeScanCur(0.0),timeScanLast(0.0),curPluseCnt(0),lastPluseCnt(0),
    avg_angle(0.0),RotAngle(0.0)*/
{
}

R2000UdpReceive::~R2000UdpReceive() {

}

void R2000UdpReceive::startScan() {
    isConnect = true;
}

void R2000UdpReceive::stopTransmission() {
    isConnect = false;
}

//给激光板发送 进行数据传输的命令
void R2000UdpReceive::startConnect() {

    laserUdpSocket = new QUdpSocket(NULL);
    laserUdpSocket->bind(CP::laserClientPort);
    connect(laserUdpSocket,SIGNAL(readyRead()),this,SLOT(udpReadData()));
    //connect(this,SIGNAL(connectSuccess()),this,SLOT(startScan()));

    receiveTimer = new QTimer(NULL);
    connect(receiveTimer,SIGNAL(timeout()),this,SLOT(rece_Timeout()));

    receiveWatchdogTimer = new QTimer(NULL);
    connect(receiveWatchdogTimer,SIGNAL(timeout()),this,SLOT(neterror()));

    endTimer = new QTimer(NULL);
    connect(endTimer,SIGNAL(timeout()),this,SLOT(end_Timeout()));

    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out << CONNECT_LASER;
    laserUdpSocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),CP::laserClientPort);

    receiveTimer->start(500);
    receiveWatchdogTimer->start(5000);
}

void R2000UdpReceive::udpReadData() {
    if(laserUdpSocket->hasPendingDatagrams())
    {
        receiveWatchdogTimer->stop();
        while(laserUdpSocket->hasPendingDatagrams())
        {
            QByteArray datagram;
            qint64 cnt = laserUdpSocket->pendingDatagramSize();
            datagram.resize(cnt);
            QHostAddress senderip;
            quint16 senderport;
            laserUdpSocket->readDatagram(datagram.data(),cnt,&senderip,&senderport);

            if(cnt <= 64) {//处理的cmd的类型报文
                QDataStream in(&datagram,QIODevice::ReadOnly);
                in.setByteOrder(QDataStream::LittleEndian);//小端模式
                in.setFloatingPointPrecision(QDataStream::SinglePrecision);

                quint16 PacketNum,ID;
                in >> PacketNum >> ID;
                switch(ID)
                {
                case 0xff3f://ack right
                    receiveTimer->stop();
                    qDebug()<<"laser board connect right!"<<endl;
                    recallnum = 0;
                    emit connectSuccess(true);
                    emit connectError(laserConn_SUCCESS);
                    break;
                case 0xff1f:
                    endTimer->stop();
                    qDebug()<<"end data transmission!"<<endl;
                    emit stopScanSuccess();
                    break;
                default://接收到错误的信息
                    receiveTimer->stop();
                    qDebug()<<"ERROR ID:"<<hex<<endl;
                    emit connectError(laserConn_FAILED);
                    break;
                }
            }
            else if(isConnect) {//此时接收的报文的是点云的报文
                QDataStream in(&datagram,QIODevice::ReadOnly);
                in.setByteOrder(QDataStream::LittleEndian);//小端模式
                laserdata data;
                //读取数据的头信息
                in>>data.head.magic>>data.head.packet_type>>data.head.packet_size>>data.head.header_size\
                  >>data.head.scan_number>>data.head.packet_number>>data.head.timestamp_raw.sec\
                  >>data.head.timestamp_raw.nsec>>data.head.timestamp_sync.sec>>data.head.timestamp_sync.nsec\
                  >>data.head.status_flags>>data.head.scan_freq>>data.head.num_points_scan>>data.head.num_points_packet\
                  >>data.head.first_index>>data.head.first_angle>>data.head.angular_increment>>data.head.iq_input\
                  >>data.head.iq_overload>>data.head.iq_timestamp_raw.sec>>data.head.iq_timestamp_raw.nsec\
                        >>data.head.iq_timestamp_sync.sec>>data.head.iq_timestamp_sync.nsec;
                //读取距离信息

                //qDebug() << data.head.iq_overload;
                if(isContinuousModeStart) {
                    uint32_t distance;
                    while(!in.atEnd())
                    {
                        in>>distance;
                        data.data.push_back(distance);
                    }

                    rawLaserData.push_back(data);
                    receviceNum++;
                    while(receviceNum > 80) {
                        receviceNum = 0;
                        //rawLaserDataQueue.enqueue(data);
                        rawLaserQueueList.enqueue(rawLaserData);
                        rawLaserData.clear();
                        useRawLaserData.release();
                    }
                    //laserCloudHandle(data);
                    emit newData();//接收到新的数据

                } else if(isSingleCircleReset && data.head.iq_overload < 50){
                    emit stopHorizontalMotorSignal();
                } else if(isSingleCircleStartScan) {
                    uint32_t distance;
                    while(!in.atEnd())
                    {
                        in>>distance;
                        data.data.push_back(distance);
                    }

                    rawLaserData.push_back(data);
                    receviceNum++;
                    while(receviceNum > 80) {
                        receviceNum = 0;
                        //rawLaserDataQueue.enqueue(data);
                        rawLaserQueueList.enqueue(rawLaserData);
                        rawLaserData.clear();
                        useRawLaserData.release();
                    }
                    //laserCloudHandle(data);
                    emit newData();//接收到新的数据

                    QTime timer = QTime::currentTime();
                    if(signleCircleTimer.msecsTo(timer) >= 1000) {
                        signleCircleTimer = QTime::currentTime();
                        singleCircleResetSuccess = true;
                    }
                    if(singleCircleResetSuccess && data.head.iq_overload < 50) {
                        emit stopHorizontalMotorSignal1();
                        singleCircleResetSuccess = false;
                    }
                }
            }
        }
        receiveWatchdogTimer->start(5000);
    }
}

void R2000UdpReceive::rece_Timeout() {
    qDebug()<<"not receive data!"<<endl;
    return;
}

void R2000UdpReceive::end_Timeout() {
    qDebug()<<"end data transmission fail!"<<endl;
    endTimer->stop();
    emit connectError(laserConn_NETERROR);
    return;
}

void R2000UdpReceive::neterror() {
    if(recallnum<1)
    {
        recallnum+=1;
        QByteArray datagram;
        QDataStream out(&datagram,QIODevice::WriteOnly);
        out << CONNECT_LASER;
        laserUdpSocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),CP::laserClientPort);
        receiveTimer->start(500);
    }
    else
    {
        recallnum = 0;
        receiveTimer->stop();
        emit connectError(laserConn_NETERROR);
    }
    return;
}

void R2000UdpReceive::stopScan() {
    if(laserUdpSocket != NULL) {
        QByteArray datagram;
        QDataStream out(&datagram,QIODevice::WriteOnly);
        out << CONNECT_STOP;
        laserUdpSocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),CP::laserClientPort);

        endTimer->start(400);
    }
}

/*
//将点云的数据转换到载体坐标系中
//void R2000UdpReceive::processPointCloudMsg(pcl::PointXYZHSV *p) {
void R2000UdpReceive::processPointCloudMsg(pcl::PointXYZI *p) {
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

    p->x = x3;
    p->y = y3;
    p->z = z3;
}

void R2000UdpReceive::laserCloudHandle(laserdata cloudData) {
    if(!systemInited) {
        systemInited = true;
        initTimestamp = cloudData.head.timestamp_sync.tosec();
    }
    timeScanLast = timeScanCur;
    timeScanCur = cloudData.head.timestamp_sync.tosec();

    //QList<pcl::PointXYZHSV> pointList;
    QList<pcl::PointXYZI> pointList;

    double first_angel = double(cloudData.head.first_angle)/10000;
    double angular_increment = double(cloudData.head.angular_increment)/10000;

    vector<uint32_t>::size_type dataSize = cloudData.data.size();

    lastPluseCnt = (cloudData.head.iq_input);
    curPluseCnt = (cloudData.head.iq_overload);

    avg_angle = (curPluseCnt-lastPluseCnt)/dataSize;

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
    CP::CloudQueue.enqueue(pointList);
    CP::UsedSpace.release();
}
*/
