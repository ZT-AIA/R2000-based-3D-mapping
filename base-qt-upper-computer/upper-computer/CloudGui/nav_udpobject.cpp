#include "nav_udpobject.h"
#include <QDebug>
#include <QList>
#include <QString>
#include <QTimer>
#include "globalvariable.h"
#include <QFile>
#include <QtMath>
#include <QDataStream>

Nav_udpobject::Nav_udpobject()
{
    txtFile = new QFile("nav.txt");
    if(!txtFile->open(QIODevice::WriteOnly))
        std::cerr<< "nav.txt can't open";
}

Nav_udpobject::~Nav_udpobject()
{
    txtFile->close();
    Msg_Timer->deleteLater();
}

void Nav_udpobject::startRecive()
{
    udpsocket = new QUdpSocket;
    udpsocket->bind(1235);
    connect(udpsocket,SIGNAL(readyRead()),this,SLOT(udpReadyread()) );
    Msg_Timer = new QTimer(this);
    connect(Msg_Timer,SIGNAL(timeout()),this,SLOT(Msg_timeout()));

    qint32 start = 0x00003f00;
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out << start;
    udpsocket->writeDatagram(datagram,QHostAddress(Nav::IpAddress),10000);

    Msg_Timer->start(400);

    recivceTimer = new QTimer(this);
    connect(recivceTimer,SIGNAL(timeout()),this,SLOT(netError()));
}

void Nav_udpobject::udpReadyread(void)
{

    while(udpsocket->hasPendingDatagrams())
    {
        QByteArray datagram;
        datagram.resize(udpsocket->pendingDatagramSize());
        udpsocket->readDatagram(datagram.data(),datagram.size());
        QDataStream in(&datagram,QIODevice::ReadOnly);
        in.setByteOrder(QDataStream::LittleEndian);
        quint16 PackNum,ID;
        in >> PackNum >> ID ;

        switch(ID)
        {
        case 0xFF3F: //ack connect
            Msg_Timer->stop();
            emit connectError(CONNECT_SUCCEE);
            recivceTimer->start(1000);
            break;
        case 0x0083: // Nav data
        {
            recivceTimer->start(1000);
            qint16 LeftofTurn,RightofTurn;
            in >> LeftofTurn >> RightofTurn;

            //=====//==Nav data packet==//====//
            quint32 XsenseHead;
            qint8 Check;
            quint16 AccType0,FreeAccType0,RateTurn0,qType0; //head
            quint8 AccType1,FreeAccType1,RateTurn1,qType1;
            float Acc_X,Acc_Y,Acc_Z,FreeAcc_X,FreeAcc_Y,FreeAcc_Z,gyr_X,gyr_Y,gyr_Z;
            float q1,q2,q3,q0;

            in.setByteOrder(QDataStream::BigEndian);
            in.setFloatingPointPrecision(QDataStream::SinglePrecision);
            in >> XsenseHead >> qType0 >> qType1 >> q0 >>q1 >> q2 >> q3
                    >> AccType0 >> AccType1 >> Acc_X >> Acc_Y >> Acc_Z
                    >> FreeAccType0 >> FreeAccType1 >> FreeAcc_X >> FreeAcc_Y >> FreeAcc_Z
                    >> RateTurn0 >> RateTurn1 >> gyr_X >> gyr_Y >> gyr_Z >> Check;

            QTextStream out(& *txtFile);                                      // write to data.txt
            out<< QString::number(PackNum)<<"  "<<QString::number(-LeftofTurn)
               <<"  "<<QString::number(RightofTurn)
              <<"  "<<QString::number(q0)<<"  "<<QString::number(q1)
             <<"  "<<QString::number(q2)<<"  "<<QString::number(q3)<<"  "
            << Acc_X <<"  "<< Acc_Y <<"  "<< Acc_Z
            <<"  "<< FreeAcc_X <<"  "<< FreeAcc_Y <<"  "<< FreeAcc_Z << endl;
            static qint16 totleofLeftofTurn = 0;
            totleofLeftofTurn += LeftofTurn;
           // qDebug() << QString::number(PackNum)<<"  "<<QString::number(totleofLeftofTurn)
            //   <<"  "<<QString::number(RightofTurn);

            Nav::Quate Q;
            Q.q0 = q0; Q.q1 = q1; Q.q2 = q2; Q.q3 = q3;
            Nav::Quaternion.enqueue(Q);
            Nav::QuateSpace.release();

            static float Path_Xm = 0,Path_Ym = 0,RTotal = 0;                   // cacluatle the Path
            double Left,Right;
            Left = -LeftofTurn/166524.0 ;
            Right = RightofTurn/168029.0;

            RTotal += Right;
            //qDebug() << "RTotal:" << RTotal;
            Path_Ym += Right * (2*(q1*q2 + q0*q3));   // X axis is front
            Path_Xm += Right * (q0*q0 + q1*q1 - q2*q2 - q3*q3);
            if(qFabs(RTotal) >= 0.1)
            {
                qDebug()<< "LocationXYZ_Queue.enqueue:"<< RTotal <<" m";
                pcl::PointXYZ Location;//位移量
                Location.x = Path_Xm;
                Location.y = Path_Ym;
                Location.z = 0.0f;

                Path_Xm = 0 ; Path_Ym = 0; RTotal = 0;

                Nav::LocationXYZ_Queue.enqueue(Location);
                Nav::LocationXYZ_Space.release();
            }
        }
            break;
        default:
            qDebug()<< "Nav UDP error" << hex << ID ;
            break;
        } //end switch
    }//end while

}

void Nav_udpobject::Msg_timeout()
{
    emit connectError(CONNECT_FAILED); // 0xFF mean Can't connect to MTi , you can define other error!
    Msg_Timer->stop();
}
void Nav_udpobject::netError()
{
    emit connectError(NET_ERROR);
    recivceTimer->stop();
}
