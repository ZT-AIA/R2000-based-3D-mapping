#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QUdpSocket>
#include <QLabel>
#include <QDataStream>
#include <QByteArray>
#include <QNetworkReply>
#include <QList>
#include "udpobject.h"
#include "qcgaugewidget.h"
#include "globalvariable.h"

//*****new add***********/
#include "r2000setup.h"
#include <QUrl>
#include <QMutex>
#include "motorcontrol.h"
#include "r2000udpreceive.h"
#include "r2000handledata.h"

class QThread;
class QFile;
class CloudWidget;
class AttitudeBox;
class Nav_udpobject;
class QTreeWidgetItem;
class QFileSystemWatcher;
//*****new add***********/
class QNetworkAccessManager;
class QNetworkReply;
class QTimer;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void OpenPCD_file(QString file_path);

    //*****new add,r2000 laser***********/
    void urlRequest(QUrl);

protected:
     void timerEvent(QTimerEvent *event);

private slots:
    void on_actionGen_triggered();
    void on_actionO_pen_triggered();

    void Msg_timeout();

    void finishedScan(void);

    void udpReadyread();
    void showHorAngle(float ,float);
    void showCloud(void);
    void on_actionS_ave_triggered();
    void uploadFinish();


    void on_actionConnectToMTi_triggered();
    void MTiconnectError(quint8 error);

    //连续模式
    void on_Button_connect_clicked();
    void on_Button_start_scan_clicked();
    void on_Button_stop_scan_clicked();

    void updateFileTree();
    void FileTreeDoubleClicked(QTreeWidgetItem * item, int column);

    void on_Button_intervalStartScan_clicked();

    //void on_Button_Single_Scan_clicked();
    //void on_Button_Single_Stop_clicked();
    //void on_Button_Scan2D_clicked();

    void on_Button_stop_scan_3_clicked();
    void finishOneSegment(bool);

    //*****new add***********/
    //激光扫描仪
    void r2000_timeout();//激光扫描仪设置参数超时处理函数
    void replyFinished(QNetworkReply*);//通过URL返回激光扫描仪设置信息的数据处理
    void on_Button_UDP_clicked();//启动激光扫描仪进行UDP传输
    void on_Button_ReleaseHandle_clicked();//释放连接句柄
    //转台电机
    void motorUDPReadData();//读取从转台电机返回的信息
    void setSpeedTimeOut();//设置转台电机速度超时处理函数
    void motorRunTimeOut();//发送启动电机命令超时处理函数
    void motorStopTimeOut();//发送电机停止命令超时处理函数
    void on_Button_H_Speed_clicked();//设置电机速度
    void on_Button_H_Start_clicked();//启动电机
    void on_Button_H_Stop_clicked();//停止电机
    void on_Button_SingleCircle_Reset_clicked();//复位电机位置的按钮响应函数
    void on_Button_SingleCircle_Start_clicked();
    void on_Button_SingleCircle_Stop_clicked();
    void stopHorizontalMotor();//到达复位位置，停止转台电机
    void stopHorizontalMotor1();//电机走完一圈回到复位位置

    void on_action_Save_triggered();//保存点云文件

private:
    void registerCloud(void);//扫描结束后点云处理
    bool createDBconnect();
    Ui::MainWindow *ui;
    QLabel *m_statuslabel;

    QUdpSocket *udpsocket;
    QThread *CloudUDPthread;

    Nav_udpobject *nav_UDP;
    QThread *nav_UDPthread;
    int nav_timer_ID;
    int datetimer_ID;
    qint64 currentTime;
    bool isScan;
    bool isMTiConnected;
    Nav::Quate Attitude;
    pcl::PointXYZ Location;

    QFile *uploadfile;
    QNetworkReply *netreply;

    UdpObject *udpObject;

    QTimer *Msg_Timer;
    quint32 TimerState;

    //工作路径
    QStringList dirList;
    QFileSystemWatcher *dirWatch;
    QString defaultSaveDir;

    //水平仪显示
    void initAttitudeGauge(void);
    QcGaugeWidget * mAttitudeGauge;
    QcNeedleItem * mAttitudeNeedle;
    QcAttitudeMeter *mAttMeter;
    QcLabelItem *rollText;
    QcLabelItem *pitchText;

    QcGaugeWidget * mCompassGauge;
    QcNeedleItem *mCompassNeedle;
    QcLabelItem *yawText;

    //*****new add***********/
    //激光扫描仪参数设置(new add)
    R2000Setup *r2000_laser;
    QNetworkAccessManager *r2000_manager;
    QNetworkReply * r2000_reply;
    QTimer *r2000_reqtime;//请求的时间
    QString handle;//udp的链接句柄
    QString errorCode;
    QMutex mutex;
    //转台电机参数设置
    MotorControl *horizontalMotor;
    QTimer *motorSpdTimer;//设置电机速度定时器
    QTimer *motorRunTimer;//启动电机定时器
    QTimer *motorStopTimer;//停止电机定时器
    QUdpSocket *udpMotorCtrl;
    //R2000激光扫描器点云传输
    R2000UdpReceive *r2000UdpReceive;
    QThread *r2000UdpThread;
    //R2000激光扫描器点云处理
    R2000HandleData *r2000HandleData;
    QThread *r2000HandleDataThread;
};

#endif // MAINWINDOW_H
