#include "motorcontrol.h"
#include <QByteArray>
#include <QDataStream>
#include <QRegExpValidator>
#include <QHostAddress>

//设置点击的默认速度，单位：r/min
#define H_Default_SPEED 5.0
#define MSG_MOTOR_RUN  0x00020000
#define MSG_MOTOR_STOP 0x00030000
#define MSG_SET_SPEED  0x00050000

const quint16 localport = 20000;
const quint16 remoteport = 20000;

MotorControl::MotorControl(Ui::MainWindow *uui,QUdpSocket *uudpMotorCtrl)
{
    ui = uui;
    udpMotorCtrl = uudpMotorCtrl;
    motorSpeed = H_Default_SPEED;

    QRegExp HMotorRegExp(QObject::tr("^180\\.\\d{1,2}|1[0-7]\\d{1}\\.\\d{1,2}|[1-9]\\d\\.\\d{1,2}|0\\.[1-9]\\d"));//0.10-180.00
    ui->lineEdit_H_Speed->setValidator(new QRegExpValidator(HMotorRegExp));
    ui->lineEdit_H_Speed->setText(QString::number(H_Default_SPEED));
    ui->Button_H_Start->setEnabled(false);
    ui->Button_H_Stop->setEnabled(true);
}

void MotorControl::setSpeed() {
    QString str = ui->lineEdit_H_Speed->text();
    float hmotorspd = str.toFloat();

    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);

    out<<MSG_SET_SPEED<<hmotorspd<<(float)motorSpeed;

    udpMotorCtrl->writeDatagram(datagram,QHostAddress(CP::IpAddress),remoteport);
}

void MotorControl::setSpeed(QString str) {
    float hmotorspd = str.toFloat();

    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);

    out<<MSG_SET_SPEED<<hmotorspd<<(float)motorSpeed;

    udpMotorCtrl->writeDatagram(datagram,QHostAddress(CP::IpAddress),remoteport);
}

void MotorControl::setRun() {
    ui->Button_H_Start->setEnabled(false);
    ui->Button_H_Stop->setEnabled(true);

    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);

    out<<MSG_MOTOR_RUN;

    udpMotorCtrl->writeDatagram(datagram,QHostAddress(CP::IpAddress),remoteport);
}

void MotorControl::setStop() {
    ui->Button_H_Start->setEnabled(true);
    ui->Button_H_Stop->setEnabled(false);

    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);

    out<<MSG_MOTOR_STOP;

    udpMotorCtrl->writeDatagram(datagram,QHostAddress(CP::IpAddress),remoteport);
}
