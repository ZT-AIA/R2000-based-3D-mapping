#include "udpobject.h"
#include <QDebug>
#include <QList>
#include <QThread>
#include <QString>
#include <QTimer>
#include <QtMath>
#include <QDataStream>
#include "globalvariable.h"
const double PI = 3.141592653;
const double mirror_length = 0.068;                  //四棱镜的边长
const double sensor_mirror_height = 0.035;           //传感器到棱镜的距离
const double sensor_deviate = 0.01;                //传感器位移 d

UdpObject::UdpObject(QObject *parent) :
    QObject(parent),
    distance(0.0f),
    num(0),ScanMode(IDLE),
    isLast(false),V_2D_angle(90)
{

}

UdpObject::~UdpObject()
{
    delete udpsocket;
}

//连续扫描模式
void UdpObject::startScan(void)
{
    init();
    ScanMode = CONTINUOUS;
    //sendSpeed();
    //send StartScan Command
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out << MSG_START_SCAN ;
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
    Msg_Timer->start(1000);
}

//间断扫描模式开始
void UdpObject::IntervalStartScan(void)
{
    init();
    ScanMode = INTERVAL;
    //send StartScan Command
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);
    out << MSG_INTERVAL_START_SCAN << ScanPoint.first();
    //qDebug()<< "ScanPoint.first()" << ScanPoint.first();
    ScanPoint.pop_front();
    out << ScanPoint.first();
    ScanPoint.pop_front();
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
}

//单点扫描模式
void UdpObject::SinglePointScan(void)
{
    init();
    //send SinglePoint Command
    ScanMode = SINGLE_POINT;
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);
    out << MSG_SINGLE_POINT_SCAN << H_angle << V_angle;
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
}
//2D扫描模式，首先完成水平扫描
void UdpObject::Scan2D(void)
{
    init();
    ScanMode = HV_2D;
    sendSpeed();
    //send Scan2D Command
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);
    out << MSG_H_2D_SCAN <<  H_2D_start << H_2D_stop - H_2D_start << float(45.0f);
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
}
void UdpObject::Msg_Timerout()
{ //if not Ack MSG_START_SCAN
    //do somethings
    qDebug()<<"Msg_Timerout";
    Msg_Timer->stop();

}

void UdpObject::udpReadyread()
{
    while(udpsocket->hasPendingDatagrams())
    {
        qint64 cont = 0;
        cont = udpsocket->pendingDatagramSize();
        QByteArray datagram;
        datagram.resize(cont);
        udpsocket->readDatagram(datagram.data(),cont);
        QDataStream in(&datagram,QIODevice::ReadOnly);
        in.setByteOrder(QDataStream::LittleEndian);
        in.setFloatingPointPrecision(QDataStream::SinglePrecision);
        quint16 ack0,ack1;
        in >>ack0 >> ack1;
        cont -= 4;
        switch(ack1)
        {
        case 0xFF00: //开始成功应答
            Msg_Timer->stop();
            break;
        case 0xFF0B://间歇扫描启动成功
        case 0xFF0D://二维模式水平启动成功
        case 0xFF0E://二维模式垂直启动成功
        case 0xFF0C://单点测量开始成功
        case 0xFF05://设置速度成功
            break;
        case 0x0181: //第一个数据包
        {
            if(ScanMode == SINGLE_POINT)
            {
                for(quint32 i=0;i < cont/16;i++)
                    AvgDistance(in);
            }else
            {
                QList<pcl::PointXYZI> Pointlist;
                for(quint32 i=0;i < cont/16;i++)
                {

                    ProcessPoint(in,Pointlist);
                }
                CP::CloudQueue.enqueue(Pointlist);
                CP::UsedSpace.release();
            }
            break;
        }
        case 0x0281: //中间数据包
        {
            if(ScanMode == SINGLE_POINT)
            {    
                for(quint32 i=0;i < cont/16;i++)
                    AvgDistance(in);
            }
            else{
                QList<pcl::PointXYZI> Pointlist;
                for(quint32 i=0;i < cont/16;i++)
                {

                    ProcessPoint(in,Pointlist);
                    if(updateAngle == 0)
                    {
                        updateAngle = HorizontalAngle;
                    }else{
                        if(HorizontalAngle - updateAngle > 1)
                        {
                            updateAngle = HorizontalAngle;
                            emit update();
                        }
                    }
                }
                CP::CloudQueue.enqueue(Pointlist);
                CP::UsedSpace.release();
            }
            break;
        }
        case 0x0481: //尾数据包...一般可以忽略，不做处理
        {
            QList<pcl::PointXYZI> Pointlist;
            for(quint32 i=0;i < cont/16;i++)
            {
                ProcessPoint(in,Pointlist);
            }
            CP::CloudQueue.enqueue(Pointlist);
            CP::UsedSpace.release();
            emit finishOneSegment(isLast); //发送多段扫描完成信号
        }
            break;
        case 0x002F://二维扫描模式数据处理
            if(ScanMode == HV_2D)
            {
                ScanMode = IDLE;
                emit finish_H_2Dscan(); //2d水平扫描结束信号
                QByteArray datagram;
                QDataStream out(&datagram,QIODevice::WriteOnly);
                out.setFloatingPointPrecision(QDataStream::SinglePrecision);
                out.setByteOrder(QDataStream::LittleEndian);
                out << MSG_V_2D_SCAN <<  V_2D_angle;
                udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
            }
            else
                if(!ScanPoint.empty())
                {
                    QByteArray datagram;
                    QDataStream out(&datagram,QIODevice::WriteOnly);
                    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
                    out.setByteOrder(QDataStream::LittleEndian);
                    out << MSG_INTERVAL_START_SCAN << ScanPoint.first();
                    ScanPoint.pop_front();
                    out << ScanPoint.first();
                    ScanPoint.pop_front();
                    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
                    isLast = ScanPoint.isEmpty();
                }else emit stopScan();
            break;
        default:
            qDebug()<<"Ack error" << hex << ack1 << "cloud UDP thread" ;
            break;
        }
    }
}

void UdpObject::ProcessPoint(QDataStream &in,QList<pcl::PointXYZI> &Pointlist)
{
    pcl::PointXYZI point;
    float Horizontal,Vertical,Distance,Depth;
    in >> Horizontal >> Vertical >> Distance >>Depth;
    if(Depth > 0.0f && qFabs(Vertical) > 25.0f && Distance > 1.0f )
    {
        double HorAngle = Horizontal/180.0*PI;
        double VerAngle = Vertical/180.0*PI;
        double a = mirror_length/(sin(VerAngle)+cos(VerAngle)+1);
        double delta_len = a*sin(VerAngle) + sensor_mirror_height - sensor_deviate*tan(VerAngle);

        point.x = (Distance - delta_len)*sin(2.0*VerAngle)*cos(HorAngle) +
                (mirror_length/2.0-sensor_deviate)*cos(HorAngle);
        point.y = (Distance - delta_len)*sin(2.0*VerAngle)*sin(HorAngle) +
                (mirror_length/2.0-sensor_deviate)*sin(HorAngle);
        point.z = (Distance - delta_len)*cos(2.0*VerAngle) +
                (mirror_length/2.0 - a*sin(VerAngle) + sensor_deviate*tan(VerAngle));
        point.intensity = Depth;

        Pointlist.push_back(point);
        HorizontalAngle = Horizontal;
        emit currentAngle(Horizontal,Vertical);
    }
}
void UdpObject::init(void)
{
    udpsocket = new QUdpSocket;
    udpsocket->bind(1234);
    connect(udpsocket,SIGNAL(readyRead()),this,SLOT(udpReadyread()) );

    Msg_Timer = new QTimer(this);
    connect(Msg_Timer,SIGNAL(timeout()),this,SLOT(Msg_Timerout()));
}

void UdpObject::AvgDistance(QDataStream &in)
{
    pcl::PointXYZI point;
    float Horizontal,Vertical,Distance,Depth;
    in >> Horizontal >> Vertical >> Distance >>Depth;
    double HorAngle = Horizontal/180.0*PI;
    double VerAngle = Vertical/180.0*PI;
    double a = mirror_length/(sin(VerAngle)+cos(VerAngle)+1);
    double delta_len = a*sin(VerAngle) + sensor_mirror_height - sensor_deviate*tan(VerAngle);

    point.x = (Distance - delta_len)*sin(2.0*VerAngle)*cos(HorAngle) +
            (mirror_length/2.0-sensor_deviate)*cos(HorAngle);
    point.y = (Distance - delta_len)*sin(2.0*VerAngle)*sin(HorAngle) +
            (mirror_length/2.0-sensor_deviate)*sin(HorAngle);
    point.z = (Distance - delta_len)*cos(2.0*VerAngle) +
            (mirror_length/2.0 - a*sin(VerAngle) + sensor_deviate*tan(VerAngle));
    distance += sqrt(point.x*point.x + point.y*point.y + point.z*point.z);
    num += 1;
    if(num == 1000)
    {
        num = 0;
        emit showDistance(distance/1000.0f);
        emit currentAngle(Horizontal,Vertical);
        distance = 0.0f;
    }
}

void UdpObject::sendSpeed()
{
    //设置扫描速度
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);
    out << MSG_SET_SPEED << H_Speed << V_Speed;
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
}
