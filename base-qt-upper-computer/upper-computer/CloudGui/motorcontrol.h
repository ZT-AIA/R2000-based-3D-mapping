#ifndef MOTORCONTROL_H
#define MOTORCONTROL_H

#include "ui_mainwindow.h"
#include <QUdpSocket>
#include <QTimer>

class MotorControl
{
public:
    MotorControl(Ui::MainWindow*, QUdpSocket*);
    void setSpeed();//发送设置转台电机的速度的命令
    void setSpeed(QString);
    void setRun();//发送启动电机的命令
    void setStop();//发送停止电机的命令

private:
    Ui::MainWindow *ui;
    float motorSpeed;
    QUdpSocket *udpMotorCtrl;
};

#endif // MOTORCONTROL_H
