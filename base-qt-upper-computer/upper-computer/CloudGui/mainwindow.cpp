#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "optionsdialog.h"
#include <QDebug>
#include <QFileDialog>
#include <QMessageBox>
#include <QDateTime>
#include <QFile>
#include <QtSql>
#include <QSqlError>
#include <QSqlQuery>
#include <QNetworkAccessManager>
#include <QUrl>
#include <QNetworkRequest>
#include <QNetworkReply>
#include "pcl/io/pcd_io.h"
#include <QSignalMapper>
#include <QThread>
#include <QFont>
#include <QFileSystemWatcher>
#include <QTimer>
#include <QtMath>
#include "nav_udpobject.h"
#include "ndtthread.h"

float myfloor_0(float x)
{
    qint16 temp = x * 10;
    x = temp / 10;
    return x;
}

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    isScan(false),isMTiConnected(false),Location(pcl::PointXYZ(0,0,0))
{

    ui->setupUi(this);
    ui->mainToolBar->setIconSize(QSize(45,45));
    /*        ui->label_Device_State->setText(QStringLiteral("扫描中"));
            ui->label_H_Angle->setText(QString::number(340.4));
            ui->label_V_Angle->setText(QString::number(49.7));
            ui->lcd_runtime->display("01:23");*/
    ui->label_Device_State->setText(QStringLiteral("未连接设备"));

    ui->tab_ScanMode->setCurrentIndex(0);
    //TEST
    pcl::PointXYZ test(1.12,0,0),test2(1.12,2.12,0);
    ui->nav_widget->addPathPoint(Location);
    ui->nav_widget->addPathPoint(test);
    ui->nav_widget->addPathPoint(test2);

    //初始化姿态显示
    initAttitudeGauge();
    //显示系统时间定时器
    datetimer_ID = startTimer(1000);
    m_statuslabel = new QLabel(this);
    statusBar()->setFont(QFont(QString("Calisto MT"),12));
    statusBar()->addPermanentWidget(m_statuslabel);
    m_statuslabel->setText(QDateTime::currentDateTime().toString("yyyy-MM-dd hh:mm:ss"));
    //按键初始使能
    ui->actionS_ave->setEnabled(false);
    ui->Button_connect->setEnabled(true);
    ui->Button_start_scan->setEnabled(false);
    ui->Button_stop_scan->setEnabled(false);

    ui->actionFTP_SQL->setChecked(false);
    //初始化超时定时器
    Msg_Timer = new QTimer(this);
    TimerState = MSG_CONNECT;
    connect(Msg_Timer,SIGNAL(timeout()),this,SLOT(Msg_timeout()));
    //初始化网络接口
    udpsocket = new QUdpSocket;
    udpsocket->bind(1234);
    connect(udpsocket,SIGNAL(readyRead()),this,SLOT(udpReadyread()) );

    //配置文件监视器+读取工作路径
    dirWatch = new QFileSystemWatcher(this);
    connect(dirWatch,SIGNAL(fileChanged(QString)),this,SLOT(updateFileTree()));
    connect(ui->treeWidget_file,SIGNAL(itemDoubleClicked(QTreeWidgetItem*,int)),this,SLOT(FileTreeDoubleClicked(QTreeWidgetItem*,int)));
    QFile DirFile("dir.txt");
    if(!DirFile.open(QIODevice::ReadOnly))
    {
        defaultSaveDir = QDir::currentPath();
        dirList.append(defaultSaveDir);
    }
    else{
        QTextStream DirOut(&DirFile);
        while(!DirOut.atEnd())
            dirList.append(DirOut.readLine());
        DirFile.close();
        defaultSaveDir = dirList.last();
        dirList.pop_back();
        DirFile.close();
    }
    ui->treeWidget_file->setColumnCount(2);
    ui->treeWidget_file->setHeaderLabels(QStringList()<< QStringLiteral("文件名") << QStringLiteral("大小") );
    updateFileTree();
    //窗口最大化
    showMaximized();

    //**********************new add*************************//
    //R2000激光扫描器
    QRegExp sampleFreqValid(tr("^360|720|1200|1440|1800|2400|3600|4200|5040^"));
    ui->lineEdit_SampleFreq->setValidator(new QRegExpValidator(sampleFreqValid));
    r2000_laser = new R2000Setup(ui);
    r2000_manager = new QNetworkAccessManager(this);
    r2000_reqtime = new QTimer(NULL);
    connect(r2000_manager,SIGNAL(finished(QNetworkReply*)),this,SLOT(replyFinished(QNetworkReply*)));
    connect(r2000_reqtime,SIGNAL(timeout()),this,SLOT(r2000_timeout()));
    //水平转台电机
    udpMotorCtrl = new QUdpSocket(NULL);
    const quint16 localport = 20000;
    udpMotorCtrl->bind(localport);
    horizontalMotor = new MotorControl(ui,udpMotorCtrl);
    motorSpdTimer  = new QTimer(NULL);
    motorRunTimer  = new QTimer(NULL);
    motorStopTimer = new QTimer(NULL);
    connect(udpMotorCtrl,SIGNAL(readyRead()),this,SLOT(motorUDPReadData()));
    connect(motorSpdTimer, SIGNAL(timeout()),this,SLOT(setSpeedTimeOut()));
    connect(motorRunTimer, SIGNAL(timeout()),this,SLOT(motorRunTimeOut()));
    connect(motorStopTimer,SIGNAL(timeout()),this,SLOT(motorStopTimeOut()));
    //单圈模式按钮初始化
    ui->Button_SingleCircle_Reset->setEnabled(false);
    ui->Button_SingleCircle_Start->setEnabled(false);
    ui->Button_SingleCircle_Stop->setEnabled(false);

    ui->action_Save->setEnabled(false);
}

MainWindow::~MainWindow()
{
    delete ui;
}
//打开设置对话框
void MainWindow::on_actionGen_triggered()
{
    OptionsDialog optionsD(this);
    if(optionsD.exec())
    {
        dirList = optionsD.dirList;
        updateFileTree();
        defaultSaveDir = dirList.at(optionsD.saveDirIndex);
    }
}

void MainWindow::on_actionO_pen_triggered()
{
    if(!isScan)
    {
        pcl::PointCloud<pcl::PointXYZI>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZI>);
        QString path = QFileDialog::getOpenFileName(this,tr("Open File"),".",tr("PCD File(*.pcd)"));
        if(!path.isEmpty())
        {
            if(pcl::io::loadPCDFile< pcl::PointXYZI >(path.toStdString(),*cloud) == -1)
            {
                QMessageBox::warning(this,QStringLiteral("文件打开失败"),QStringLiteral("检查文件格式"));
            }else {
                CP::cloud1 = cloud;
                CP::cloud2->clear();
               // ui->cloudwidget->addCloud(cloud);
                ui->cloudwidget->clearSelectPoint();
                ui->cloudwidget->resetXYZ();
                ui->cloudwidget->updateGL();
            }
        }
    }
}

void MainWindow::udpReadyread()
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
        case 0xFF3F: //ack connect
        {
            Msg_Timer->stop();
            statusBar()->showMessage(QStringLiteral("连接成功"));
            ui->label_Device_State->setText(QStringLiteral("已连接扫描仪"));
            ui->Button_start_scan->setEnabled(true);
        }
            break;
        case 0xFF01: //acknowledge Stop Scan
            Msg_Timer->stop();
            statusBar()->showMessage(QStringLiteral("扫描停止成功"),3000);
            ui->label_Device_State->setText(QStringLiteral("复位中..."));
            ui->Button_stop_scan->setEnabled(false);
            ui->actionS_ave->setEnabled(true);
            break;
        case 0x002F:
            ui->Button_start_scan->setEnabled(true);
            ui->label_Device_State->setText(QStringLiteral("待命中..."));
            ui->Button_intervalStartScan->setEnabled(true);
            break;
        case 0x0481://按下停止按键后的尾报，可不用处理
            break;
        default:
            statusBar()->showMessage(QStringLiteral("MainWindow UDP 接收到无法解析的数据包"));
            break;
        }
    }
}

void MainWindow::on_Button_connect_clicked()
{
    /*QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out << MSG_CONNECT ;
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);

    Msg_Timer->start(500);
    TimerState = MSG_CONNECT;
    statusBar()->showMessage(QStringLiteral("连接中"),500);*/

    //new add
    ui->label_Device_State->setText(QStringLiteral("正在连接..."));
    statusBar()->showMessage(QStringLiteral("连接中"));

    r2000UdpReceive = new R2000UdpReceive;
    r2000UdpThread = new QThread;
    r2000UdpReceive->moveToThread(r2000UdpThread);
    connect(r2000UdpThread,SIGNAL(started()),r2000UdpReceive,SLOT(startConnect()));

    //connect(r2000UdpReceive,SIGNAL(connectSuccess(bool)),ui->Button_start_scan,SLOT(setEnabled(bool)));
    //connect(r2000UdpReceive,SIGNAL(connectSuccess(bool)),ui->Button_SingleCircle_Reset,SLOT(setEnabled(bool)));
    ui->Button_start_scan->setEnabled(true);
    ui->Button_SingleCircle_Reset->setEnabled(true);

    r2000HandleData = new R2000HandleData;
    r2000HandleDataThread = new QThread;
    r2000HandleData->moveToThread(r2000HandleDataThread);
    connect(r2000UdpReceive,SIGNAL(newData()),r2000HandleData,SLOT(laserCloudHandle()));
    connect(r2000HandleData,SIGNAL(showData()),this,SLOT(showCloud()));

    connect(r2000UdpReceive,SIGNAL(stopHorizontalMotorSignal()),this,SLOT(stopHorizontalMotor()));
    connect(r2000UdpReceive,SIGNAL(stopHorizontalMotorSignal1()),this,SLOT(stopHorizontalMotor1()));

    r2000HandleDataThread->start();
    r2000UdpThread->start();
}

//=======Begin process MTi===============//
void MainWindow::on_actionConnectToMTi_triggered()
{
    //连接MTi
    nav_UDP = new Nav_udpobject;
    nav_UDPthread = new QThread;
    nav_UDP->moveToThread(nav_UDPthread);
    connect(nav_UDP,SIGNAL(connectError(quint8)),this,SLOT(MTiconnectError(quint8)));
    connect(nav_UDPthread,SIGNAL(started()),nav_UDP,SLOT(startRecive()));
    nav_UDPthread->start();
    nav_timer_ID = startTimer(150); //200ms

}
void MainWindow::MTiconnectError(quint8 error)
{
    switch(error)
    {
    case CONNECT_FAILED:
        killTimer(nav_timer_ID);
        nav_UDPthread->quit();
        nav_UDPthread->wait();
        delete nav_UDPthread;
        delete nav_UDP;
        isMTiConnected = false;
        statusBar()->showMessage(QStringLiteral("惯性传感器连接失败，请检查网络链接"));
        break;
    case CONNECT_SUCCEE:
        ui->actionConnectToMTi->setEnabled(false);
        isMTiConnected = true;
        statusBar()->showMessage(QStringLiteral("惯性设备连接成功"),2000);
        break;
    case NET_ERROR:
        killTimer(nav_timer_ID);
        nav_UDPthread->quit();
        nav_UDPthread->wait();
        delete nav_UDPthread;
        delete nav_UDP;
        isMTiConnected = false;
        ui->actionConnectToMTi->setEnabled(true);
        statusBar()->showMessage(QStringLiteral("惯性设备网络异常"));
        break;
    default:
        qDebug()<< "undefine MTiconnectError:" << hex << error;
        break;
    }
}

void MainWindow::timerEvent(QTimerEvent *event)
{
    if(event->timerId() == nav_timer_ID)
    {
        if(Nav::QuateSpace.available() > 0)//姿态显示
        {
            quint16 availableNum = Nav::QuateSpace.available();
            for(quint16 i = 0;i < (availableNum - 1);i++)
            {
                Nav::QuateSpace.acquire();
                Nav::Quaternion.dequeue();
            }
            Nav::QuateSpace.acquire();
            Attitude = Nav::Quaternion.dequeue();
            float roll,pitch,yaw;
            //qDebug()<< "Q:" << Q.q0 << Q.q1 << Q.q2 << Q.q3 ;
            roll = qRadiansToDegrees( qAtan2(2*(Attitude.q2*Attitude.q3+Attitude.q0*Attitude.q1),
                                             2*(Attitude.q0*Attitude.q0+Attitude.q3*Attitude.q3) - 1.0f) );
            pitch = qRadiansToDegrees( qAsin(2*(Attitude.q0*Attitude.q2-Attitude.q1*Attitude.q3)) );
            yaw = qRadiansToDegrees( qAtan2(2*(Attitude.q0*Attitude.q3+Attitude.q2*Attitude.q1),
                                            2*(Attitude.q0*Attitude.q0+Attitude.q1*Attitude.q1) - 1.0f) );
            yawText->setText(QString::number(yaw,'f',1));
            mCompassNeedle->setCurrentValue(yaw+90);

            mAttitudeNeedle->setCurrentValue(90+roll);
            mAttMeter->setCurrentPitch(pitch);
            mAttMeter->setCurrentRoll(roll);
            rollText->setText(QString("Roll:%1").arg(myfloor_0(roll)));
            pitchText->setText(QString("Pitch:%1").arg(myfloor_0(pitch)));
        }
        if( Nav::LocationXYZ_Space.available() > 0) //位移显示
        {
            pcl::PointXYZ location;
            quint16 AvaiNum = Nav::LocationXYZ_Space.available();
            for(quint16 i = 0;i < AvaiNum ;i++)
            {
                Nav::LocationXYZ_Space.acquire();
                location = Nav::LocationXYZ_Queue.dequeue();
                Location.x += location.x;
                Location.y += location.y;
                Location.z += location.z;
                ui->nav_widget->addPathPoint(Location);
            }
            //ui->nav_widget->PathPointList.append(Location);
            ui->nav_widget->updateGL();
        }
    }
    if(event->timerId() == datetimer_ID)
    {
        m_statuslabel->setText(QDateTime::currentDateTime().toString("yyyy-MM-dd hh:mm:ss"));
        if(isScan)
        {
            qint16 time = (QDateTime::currentDateTime().currentMSecsSinceEpoch() - currentTime )/1000;
            QString runTime;
            if(time%60 == 0) //time == 0
                runTime = "00";
            if(time%60 / 10)
                runTime = QString::number(time%60);
            else runTime = "0" + QString::number(time%60);

            if(time/60 /10)
                runTime = QString::number(time/60) + ":" + runTime;
            else runTime = "0" + QString::number(time/60) + ":" +runTime;
            ui->lcd_runtime->display(QString::number(time/3600) + ":" + runTime);

        }
    }

}
//=======End process MTi===============//

//扫描仪应答超时处理
void MainWindow::Msg_timeout()
{
    Msg_Timer->stop();
    switch(TimerState)
    {
    case MSG_CONNECT:
        statusBar()->showMessage(QStringLiteral("连接超时，请检查网络状态")); break;
    case MSG_STOP_SCAN:
        statusBar()->showMessage(QStringLiteral("停止扫描失败，网络出现故障"));
        ui->label_Device_State->setText(QStringLiteral("停止扫描失败"));
        ui->Button_connect->setEnabled(true);
        ui->actionS_ave->setEnabled(true);
        break;
    default:
        statusBar()->showMessage(QStringLiteral("扫描仪超时处理出现异常"));break;
    }
}

//间断扫描开始
void MainWindow::on_Button_intervalStartScan_clicked()
{
    QList<float> scan_point;
    scan_point.append(ui->doubleSpinBox_1_begin->value());
    scan_point.append(ui->doubleSpinBox_1_end->value() - ui->doubleSpinBox_1_begin->value());
    scan_point.append(ui->doubleSpinBox_2_begin->value());
    scan_point.append(ui->doubleSpinBox_2_end->value() - ui->doubleSpinBox_2_begin->value());

    CP::cloud1->clear();CP::cloud2->clear();
    ui->cloudwidget->clearSelectPoint();
    ui->cloudwidget->resetXYZ();
    ui->cloudwidget->updateGL();
    ui->cloudwidget->OutlierRemovalSetEnable(false);

    udpObject = new UdpObject;
    CloudUDPthread = new QThread;
    udpObject->setIntervalScanPoint(scan_point);
    udpObject->moveToThread(CloudUDPthread);
    connect(udpObject,SIGNAL(currentAngle(float,float)),this,SLOT(showHorAngle(float,float)) );
    connect(udpObject,SIGNAL(update()),this,SLOT(showCloud()) );

    connect(CloudUDPthread,SIGNAL(started()),udpObject,SLOT(IntervalStartScan()) );
    connect(udpObject,SIGNAL(finishOneSegment(bool)),this,SLOT(finishOneSegment(bool)));
    connect(udpObject,SIGNAL(stopScan()),CloudUDPthread,SLOT(quit()) );
    connect(udpObject,SIGNAL(stopScan()),this,SLOT(finishedScan()) );
    CloudUDPthread->start();
    //设备运行计时
    isScan = true;
    currentTime = QDateTime::currentDateTime().currentMSecsSinceEpoch();

    statusBar()->showMessage(QStringLiteral("间断扫描中"));
    ui->label_Device_State->setText(QStringLiteral("间断扫描中..."));
    ui->Button_intervalStartScan->setEnabled(false);
    ui->Button_start_scan->setEnabled(false);
}
//间断扫描停止按键
void MainWindow::on_Button_stop_scan_3_clicked()
{
    on_Button_stop_scan_clicked();
}
//多段扫描状态更新
void MainWindow::finishOneSegment(bool islast)
{
    switch(udpObject->ScanMode)
    {
    case INTERVAL:
        if(islast)
        {
            ui->cloudwidget->updateGL();
            ui->label_Device_State->setText(QStringLiteral("复位中"));
            isScan = false;
        }
        else
            ui->label_Device_State->setText(QStringLiteral("扫描下一段"));
        break;
    case HV_2D:
        ui->label_Device_State->setText(QStringLiteral("开始垂直扫描"));break;
    default:
        ui->label_Device_State->setText(QStringLiteral("复位中"));
        ui->cloudwidget->updateGL();
        break;
    }
}
//连续扫描模式开始按键处理
void MainWindow::on_Button_start_scan_clicked()
{
    CP::cloud1->clear();CP::cloud2->clear();
    ui->cloudwidget->clearSelectPoint();
    ui->cloudwidget->resetXYZ();
    ui->cloudwidget->updateGL();
    ui->cloudwidget->OutlierRemovalSetEnable(false);

/*    udpObject = new UdpObject;
    CloudUDPthread = new QThread;
    udpObject->moveToThread(CloudUDPthread);
    connect(udpObject,SIGNAL(currentAngle(float,float)),this,SLOT(showHorAngle(float,float)) );
    connect(udpObject,SIGNAL(update()),this,SLOT(showCloud()) );

    connect(CloudUDPthread,SIGNAL(started()),udpObject,SLOT(startScan()) );
    connect(udpObject,SIGNAL(stopScan()),CloudUDPthread,SLOT(quit()) );
    connect(udpObject,SIGNAL(stopScan()),this,SLOT(finishedScan()) );
    CloudUDPthread->start();
    //设备运行计时
    isScan = true;
    currentTime = QDateTime::currentDateTime().currentMSecsSinceEpoch();

    ui->Button_start_scan->setEnabled(false);
    ui->Button_stop_scan->setEnabled(true);
    ui->Button_intervalStartScan->setEnabled(false);
    statusBar()->showMessage(QStringLiteral("扫描中"));
    ui->label_Device_State->setText(QStringLiteral("连续扫描中..."));
*/
    //new add
    isScan = true;
    currentTime = QDateTime::currentDateTime().currentMSecsSinceEpoch();
    statusBar()->showMessage(QStringLiteral("扫描中"));
    ui->label_Device_State->setText(QStringLiteral("连续扫描中..."));

    isContinuousModeStart = true;
    ui->Button_start_scan->setEnabled(false);
    ui->Button_stop_scan->setEnabled(true);
    ui->Button_SingleCircle_Reset->setEnabled(false);
    r2000UdpReceive->startScan();
}
//单点扫描模式
/*void MainWindow::on_Button_Single_Scan_clicked()
{
    udpObject = new UdpObject;
    CloudUDPthread = new QThread;
    udpObject->moveToThread(CloudUDPthread);
    connect(udpObject,SIGNAL(currentAngle(float,float)),this,SLOT(showHorAngle(float,float)) );
    connect(udpObject,SIGNAL(update()),this,SLOT(showCloud()) );

    connect(CloudUDPthread,SIGNAL(started()),udpObject,SLOT(SinglePointScan()) );
    connect(udpObject,SIGNAL(showDistance(double)),ui->doubleSpinBox_distance,SLOT(setValue(double)));
    udpObject->setSinglePoint(ui->doubleSpinBox_H->value(),ui->doubleSpinBox_V->value());
    CloudUDPthread->start();
    //设备运行计时
    isScan = true;
    currentTime = QDateTime::currentDateTime().currentMSecsSinceEpoch();

    ui->label_Device_State->setText(QStringLiteral("单点测量"));
}
//单点扫描模式停止按键
void MainWindow::on_Button_Single_Stop_clicked()
{
    on_Button_stop_scan_clicked();
}
//2维扫描模式开始按键
void MainWindow::on_Button_Scan2D_clicked()
{
    CP::cloud1->clear();
    CP::cloud2->clear();
    ui->cloudwidget->clearSelectPoint();
    ui->cloudwidget->resetXYZ();
    ui->cloudwidget->updateGL();
    ui->cloudwidget->OutlierRemovalSetEnable(false);

    udpObject = new UdpObject;
    CloudUDPthread = new QThread;
    udpObject->moveToThread(CloudUDPthread);
    connect(udpObject,SIGNAL(currentAngle(float,float)),this,SLOT(showHorAngle(float,float)) );
    connect(udpObject,SIGNAL(update()),this,SLOT(showCloud()) );

    connect(CloudUDPthread,SIGNAL(started()),udpObject,SLOT(Scan2D()) );
    connect(udpObject,SIGNAL(stopScan()),CloudUDPthread,SLOT(quit()) );
    connect(udpObject,SIGNAL(stopScan()),this,SLOT(finishedScan()) );
    connect(udpObject,SIGNAL(finishOneSegment(bool)),this,SLOT(finishOneSegment(bool)));
    connect(udpObject,SIGNAL(finish_H_2Dscan()),ui->cloudwidget,SLOT(SaveToCloud2()));
    udpObject->set_2D_SCAN(ui->spinBox_H_start->value(),ui->spinBox_H_stop->value(),ui->spinBox_V_point->value());
    udpObject->setSpeed(ui->spinBox_H_speed->value(),ui->spinBox_V_speed->value());
    CloudUDPthread->start();
    //设备运行计时
    isScan = true;
    currentTime = QDateTime::currentDateTime().currentMSecsSinceEpoch();
    ui->label_Device_State->setText(QStringLiteral("二维扫描中..."));
}
*/

//360°扫描完成处理
void MainWindow::finishedScan(void)
{
    isScan = false;
    ui->cloudwidget->OutlierRemovalSetEnable(true);
    ui->cloudwidget->updateGL();
    CloudUDPthread->wait();
    delete CloudUDPthread;
    delete udpObject;
    ui->Button_start_scan->setEnabled(true);
    ui->Button_stop_scan->setEnabled(false);
    ui->actionS_ave->setEnabled(true);
    ui->Button_intervalStartScan->setEnabled(true);
    statusBar()->showMessage(QStringLiteral("扫描结束"));
    ui->label_Device_State->setText(QStringLiteral("待命中..."));
}
//手动停止扫描按键处理
void MainWindow::on_Button_stop_scan_clicked()
{
 /*   isScan = false;
    ui->cloudwidget->OutlierRemovalSetEnable(true);
    if(CloudUDPthread != 0 && udpObject != 0)
    {
        CloudUDPthread->quit(); // stop thread
        CloudUDPthread->wait();
        delete CloudUDPthread;
        delete udpObject;
        CloudUDPthread = 0;
        udpObject = 0;
    }
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out << MSG_STOP_SCAN ;
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);

    Msg_Timer->start(500);
    TimerState = MSG_STOP_SCAN;
    ui->label_Device_State->setText(QStringLiteral("完成扫描"));
    registerCloud();
    */
    //new add
    isScan = false;
    ui->label_Device_State->setText(QStringLiteral("完成扫描"));
    ui->action_Save->setEnabled(true);
    //registerCloud();

    isContinuousModeStart = false;

    ui->Button_start_scan->setEnabled(false);
    ui->Button_stop_scan->setEnabled(false);
    if(r2000UdpReceive != NULL) {
        r2000UdpReceive->stopScan();
        r2000UdpThread->quit();
        r2000UdpThread->wait();
        delete r2000UdpThread;
        delete r2000UdpReceive;

        r2000HandleDataThread->quit();
        r2000HandleDataThread->wait();
        delete r2000HandleDataThread;
        delete r2000HandleData;
    }
}
void MainWindow::registerCloud(void)
{
    ui->cloudwidget->updateGL();
    if(isMTiConnected)
    {
        Eigen::Quaternionf q(Attitude.q0,Attitude.q1,Attitude.q2,Attitude.q3);

        Eigen::Translation3f init_translation(0, 0, 0);
        Eigen::AngleAxisf init_rotation(qDegreesToRadians((float)-90.0), Eigen::Vector3f::UnitZ ());
        pcl::PointCloud<pcl::PointXYZI>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZI>);
        pcl::transformPointCloud (*CP::cloud1, *cloud, ((q*init_translation)).matrix ());
        CP::cloud1 = cloud;
        ui->cloudwidget->updateGL();
    }
}

void MainWindow::showHorAngle(float H_angle,float V_angle)
{
    int angleTemp =H_angle *100.0 ;
    H_angle = angleTemp /100.0;
    ui->label_H_Angle->setText(QString::number(H_angle));
    angleTemp =V_angle *100.0 ;
    V_angle = angleTemp /100.0;
    ui->label_V_Angle->setText(QString::number(V_angle));
}
void MainWindow::showCloud(void)
{
    //ui->cloudwidget->rotationZ -= 1;
    //ui->cloudwidget->updateGL();
}


void MainWindow::on_actionS_ave_triggered()
{
    QDateTime time = QDateTime::currentDateTime();
    QString cuttentTime = time.toString("yyyy-MM-dd-hh-mm-ss");
    QString PCDFileName = defaultSaveDir + "/" + cuttentTime;
    if(!CP::cloud1->empty())
    {
        CP::cloud1->width = CP::cloud1->size();
        CP::cloud1->height = 1 ;
        CP::cloud1->is_dense = false;
        pcl::io::savePCDFileBinary((PCDFileName + + "-CloudData1.pcd").toStdString(),*CP::cloud1);
    } //savePCDFileASCII
    if(!CP::cloud2->empty())
    {
        CP::cloud2->width = CP::cloud2->size();
        CP::cloud2->height = 1 ;
        CP::cloud2->is_dense = false;
        pcl::io::savePCDFileBinary((PCDFileName + + "-CloudData2.pcd").toStdString(),*CP::cloud2);
    }
    statusBar()->showMessage(QStringLiteral("文件保存成功"),2000);
    updateFileTree();
    //上传FTP服务器，记录SQL数据库
    if(ui->actionFTP_SQL->isChecked())
    {
        if(createDBconnect())    //=======DB connect=============
        {
            QNetworkAccessManager netManager(this);
            uploadfile =new QFile(PCDFileName);
            if(!uploadfile->open(QIODevice::ReadWrite))
            {
                std::cerr << "can not open uploadfile";

            }else {
                QString ftpPath = "Original_Cloud/" + PCDFileName;
                QUrl ftpUrl("ftp://115.156.197.248");
                ftpUrl.setPath(ftpPath);
                ftpUrl.setUserName("wangzhen");
                ftpUrl.setPassword("wangzhen");
                QNetworkRequest request(ftpUrl);
                netreply = netManager.put(request,uploadfile);
                connect(netreply, SIGNAL(finished()), this, SLOT(uploadFinish()));
               // connect(netreply, SIGNAL(error(QNetworkReply::NetworkError)),this,SLOT(requestError(QNetworkReply::NetworkError)));

                QSqlQuery query;
                if( !query.exec(QString("INSERT INTO cloud_original_data(Fk_Device_Id,Fk_Working_Id,"
                                        "Original_Name,Original_Stortime,Original_Size,Original_Folder,Original_Class) "
                                        "VALUES(%1,%2,'%3','%4',%5,'%6','%7')")
                                .arg("1").arg("1").arg(PCDFileName).arg(cuttentTime).arg(uploadfile->size()/1024).arg("E:/"+ftpPath).arg("pcb")) )
                {
                    QMessageBox::warning(0,"Insert Error","fail to QSqlTableModel!");
                }else {statusBar()->showMessage("Insert MYSQL finished",3000);}
            }

        }
    }

}
bool MainWindow::createDBconnect()
{
    QSqlDatabase dbSQL=QSqlDatabase::addDatabase("QMYSQL");
    dbSQL.setHostName("115.156.197.248");
    dbSQL.setPort(3306);
    dbSQL.setDatabaseName("cloud");
    dbSQL.setUserName("root");
    dbSQL.setPassword("wang");
    if (!dbSQL.open()) {
        QMessageBox::warning(0, tr("Database Error"),
                             dbSQL.lastError().text());
        return false;
    }
    return true;
}
void MainWindow::uploadFinish()
{
    delete uploadfile;
    netreply->deleteLater();
    statusBar()->showMessage("upload FTP finished",3000);
}

/*************更新文件列表***********************/
void MainWindow::updateFileTree(void )
{
    ui->treeWidget_file->clear();
    foreach(QString dirStr,dirList)
    {
        QDir dir(dirStr);
        QTreeWidgetItem *rootItem = new QTreeWidgetItem(ui->treeWidget_file);
        rootItem->setText(0,dirStr);
        ui->treeWidget_file->addTopLevelItem(rootItem);

        dir.setFilter(QDir::Files | QDir::NoSymLinks);
        QFileInfoList filelist = dir.entryInfoList();

        if(filelist.count() > 0)
        {
            for(int i=0; i < filelist.size(); i++)
            {
                QFileInfo file_info = filelist.at(i);
                QString suffix = file_info.suffix();
                //匹配文件后缀
                if(QString::compare(suffix, QString("pcd"), Qt::CaseInsensitive) == 0)
                {
                    dirWatch->addPath(file_info.absoluteFilePath());
                    QString absolute_file_path = file_info.fileName();
                    QTreeWidgetItem *item = new QTreeWidgetItem;
                    item->setText(0,absolute_file_path);
                    item->setText(1,QString::number(file_info.size() / 1024.0f / 1024.0f) + "MB");
                    rootItem->addChild(item);
                }
            }//end for           
        }
    }//end foreach
    ui->treeWidget_file->expandAll();
}
//双击打开pcd文件
void MainWindow::FileTreeDoubleClicked(QTreeWidgetItem * item, int column)
{
    if(!isScan)
    {
        if(item->columnCount() == 2)
        {
            pcl::PointCloud<pcl::PointXYZI>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZI>);
            if(pcl::io::loadPCDFile< pcl::PointXYZI >((item->parent()->text(0)+ "/" + item->text(0)).toStdString(),*cloud) == -1)
            {
                QMessageBox::warning(this,QStringLiteral("文件打开失败"),QStringLiteral("检查文件格式"));
            }else {
                CP::cloud1 = cloud;
                CP::cloud2->clear();
                ui->cloudwidget->clearSelectPoint();
                ui->cloudwidget->resetXYZ();
                ui->cloudwidget->updateGL();
            }
        }
    }
}
//姿态显示空间初始化
void MainWindow::initAttitudeGauge()
{
    //初始化水平仪
    mAttitudeGauge = new QcGaugeWidget;
    mAttitudeGauge->addBackground(99);
    QcBackgroundItem *bkg = mAttitudeGauge->addBackground(92);
    bkg->clearrColors();
    bkg->addColor(0.1,Qt::black);
    bkg->addColor(1.0,Qt::white);
    mAttMeter = mAttitudeGauge->addAttitudeMeter(88);

    mAttitudeNeedle = mAttitudeGauge->addNeedle(70);
    mAttitudeNeedle->setMinDegree(0);
    mAttitudeNeedle->setMaxDegree(180);
    mAttitudeNeedle->setValueRange(0,180);
    mAttitudeNeedle->setCurrentValue(90);
    mAttitudeNeedle->setColor(Qt::white);
    mAttitudeNeedle->setNeedle(QcNeedleItem::AttitudeMeterNeedle);
    mAttitudeGauge->addGlass(80);
    mAttitudeGauge->setMinimumSize(150,150);
    mAttitudeGauge->setMaximumSize(200,200);

    rollText = mAttitudeGauge->addLabel(65);
    rollText->setColor(Qt::white);
    rollText->setText("Roll:0.0");
    pitchText = mAttitudeGauge->addLabel(77);
    pitchText->setColor(Qt::white);
    pitchText->setText("Pitch:0.0");
    //罗盘
    mCompassGauge = new QcGaugeWidget;
    mCompassGauge->setMinimumSize(150,150);
    mCompassGauge->setMaximumSize(200,200);
    mCompassGauge->addBackground(99);
    QcBackgroundItem *bkg1 = mCompassGauge->addBackground(92);
    bkg1->clearrColors();
    bkg1->addColor(0.1,Qt::black);
    bkg1->addColor(1.0,Qt::white);

    QcBackgroundItem *bkg2 = mCompassGauge->addBackground(88);
    bkg2->clearrColors();
    bkg2->addColor(0.1,Qt::white);
    bkg2->addColor(1.0,Qt::black);

    QcLabelItem *w = mCompassGauge->addLabel(80);
    w->setText("W");
    w->setAngle(0);
    w->setColor(Qt::white);

    QcLabelItem *n = mCompassGauge->addLabel(80);
    n->setText("N");
    n->setAngle(90);
    n->setColor(Qt::white);

    QcLabelItem *e = mCompassGauge->addLabel(80);
    e->setText("E");
    e->setAngle(180);
    e->setColor(Qt::white);

    QcLabelItem *s = mCompassGauge->addLabel(80);
    s->setText("S");
    s->setAngle(270);
    s->setColor(Qt::white);

    yawText = mCompassGauge->addLabel(15);
    yawText->setText(QStringLiteral("偏航角：00.0"));
    yawText->setAngle(270);
    yawText->setColor(Qt::black);

    QcDegreesItem *deg = mCompassGauge->addDegrees(60);//70
    deg->setStep(5);
    deg->setMaxDegree(270);
    deg->setMinDegree(-90);
    deg->setColor(Qt::white);
    mCompassNeedle = mCompassGauge->addNeedle(60);
    mCompassNeedle->setNeedle(QcNeedleItem::FeatherNeedle);
    mCompassNeedle->setValueRange(0,360);
    mCompassNeedle->setMaxDegree(360);
    mCompassNeedle->setMinDegree(0);
    mCompassGauge->addBackground(7);
   // mCompassGauge->addGlass(88);

    ui->Attitude_layout->addWidget(mAttitudeGauge);
    ui->Attitude_layout->addWidget(mCompassGauge);
    yawText->setText(QString::number(0,'f',1));
}

void MainWindow::OpenPCD_file(QString file_path)
{
    pcl::PointCloud<pcl::PointXYZI>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZI>);
    if(pcl::io::loadPCDFile< pcl::PointXYZI >(file_path.toStdString(),*cloud) == -1)
    {
        QMessageBox::warning(this,QStringLiteral("文件打开失败"),QStringLiteral("检查文件格式,文件路径不能包含中文 "));
    }else {
        CP::cloud1 = cloud;
        CP::cloud2->clear();
        ui->cloudwidget->clearSelectPoint();
        ui->cloudwidget->resetXYZ();
        ui->cloudwidget->updateGL();
    }
}

//new add (用于http的请求)
void MainWindow::urlRequest(QUrl url) {
    r2000_reply = r2000_manager->get(QNetworkRequest(url));
    r2000_reqtime->start(500);
}

void MainWindow::r2000_timeout() {
    r2000_reqtime->stop();
    QMessageBox::warning(this,tr("reply message"),tr("没有收到http的回复！"));
}

//接受url回复触发槽函数
void MainWindow::replyFinished(QNetworkReply *r2000_reply) {
    r2000_reqtime->stop();
    QString msg = r2000_reply->readAll();
    r2000_reply->deleteLater();
    handle = r2000_laser->getHandle(msg);
    errorCode = r2000_laser->getErroeCode(msg);
    if(errorCode != "0") {
        QMessageBox::warning(this,tr("R2000 laser error"),tr("设置激光扫描仪参数出现错误！"));
    }
}

//设置激光扫描器参数，建立UDP数据传输
void MainWindow::on_Button_UDP_clicked()
{
    urlRequest(r2000_laser->setPara());
    urlRequest(r2000_laser->connectUDPScan());

    //非阻塞延时
    QTime _Timer = QTime::currentTime().addMSecs(500);
    while( QTime::currentTime() < _Timer )
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);

    handle = ui->lineEdit_Handle->text();
    if(handle.size() > 0) {
        urlRequest(r2000_laser->startScan(handle));
    }
}

//释放激光扫描器连接句柄
void MainWindow::on_Button_ReleaseHandle_clicked() {
    handle = ui->lineEdit_Handle->text();
    if(handle.size() > 0) {
        urlRequest(r2000_laser->releaseHandle(handle));
    }
}

//new add(用于设置转台电机参数)
void MainWindow::motorRunTimeOut() {
    motorRunTimer->stop();
    ui->label_RuningStatusDisplay->setText("电机启动失败!");
}

void MainWindow::motorStopTimeOut() {
    motorStopTimer->stop();
    ui->label_RuningStatusDisplay->setText("电机停止失败!");
}

void MainWindow::setSpeedTimeOut() {
    motorSpdTimer->stop();
    ui->label_RuningStatusDisplay->setText("速度设定失败!");
}

void MainWindow::motorUDPReadData() {
    while(udpMotorCtrl->hasPendingDatagrams())
    {
        qint64 cnt = udpMotorCtrl->pendingDatagramSize();
        QHostAddress senderip;
        quint16 senderport;
        QByteArray datagram;
        datagram.resize(cnt);
        udpMotorCtrl->readDatagram(datagram.data(),cnt,&senderip,&senderport);
        QDataStream in(&datagram,QIODevice::ReadOnly);
        in.setByteOrder(QDataStream::LittleEndian);
        in.setFloatingPointPrecision(QDataStream::SinglePrecision);
        quint16 packnum,ID;
        in>>packnum>>ID;
        switch(ID)
        {
        case 0xff02:
            motorRunTimer->stop();
            ui->label_RuningStatusDisplay->setText("电机启动!");
            break;
        case 0xff03:
            motorStopTimer->stop();
            ui->label_RuningStatusDisplay->setText("电机停转!");
            break;
        case 0xff05:
            motorSpdTimer->stop();
            ui->label_RuningStatusDisplay->setText("速度设定成功!");
            break;
        default:
            ui->label_RuningStatusDisplay->setText("未知的回复错误!" + QString::number(ID));
            break;
        }
    }
}


void MainWindow::on_Button_H_Speed_clicked()
{
    horizontalMotor->setSpeed();
    motorSpdTimer->start(800);
}

void MainWindow::on_Button_H_Start_clicked()
{
    horizontalMotor->setRun();
    motorRunTimer->start(800);
}

void MainWindow::on_Button_H_Stop_clicked()
{
    horizontalMotor->setStop();
    motorStopTimer->start(800);
}

void MainWindow::stopHorizontalMotor() {
    horizontalMotor->setStop();
    motorStopTimer->start(800);

    statusBar()->showMessage(QStringLiteral("转台电机复位完成"));
    ui->label_Device_State->setText(QStringLiteral("转台电机复位完成"));

    if(!isSingleCircleStartScan) {

        ui->Button_SingleCircle_Reset->setEnabled(false);
        ui->Button_SingleCircle_Start->setEnabled(true);
        ui->Button_SingleCircle_Stop->setEnabled(false);
    }
    if(isSingleCircleReset) {
        isSingleCircleReset = false;
    }
}

void MainWindow::stopHorizontalMotor1() {
    horizontalMotor->setStop();
    motorStopTimer->start(800);
    ui->Button_SingleCircle_Reset->setEnabled(true);
    ui->Button_SingleCircle_Start->setEnabled(false);
    ui->Button_SingleCircle_Stop->setEnabled(false);

    ui->action_Save->setEnabled(true);

    isSingleCircleStartScan = false;
    isSingleCircleReset = false;
    singleCircleResetSuccess = false;

    r2000UdpReceive->stopTransmission();

    isScan = false;
    statusBar()->showMessage(QStringLiteral("单圈扫描完成"));
    ui->label_Device_State->setText(QStringLiteral("单圈扫描完成"));
}

void MainWindow::on_Button_SingleCircle_Reset_clicked() {
    isSingleCircleReset = true;
    isSingleCircleStartScan = false;

    CP::cloud1->clear();CP::cloud2->clear();
    ui->cloudwidget->clearSelectPoint();
    ui->cloudwidget->resetXYZ();
    ui->cloudwidget->updateGL();
    ui->cloudwidget->OutlierRemovalSetEnable(false);

    ui->Button_start_scan->setEnabled(false);
    ui->Button_stop_scan->setEnabled(false);
    ui->Button_SingleCircle_Reset->setEnabled(false);

    ui->action_Save->setEnabled(false);

    statusBar()->showMessage(QStringLiteral("转台电机复位中"));
    ui->label_Device_State->setText(QStringLiteral("转台电机复位中..."));

    QString str = "5";
    horizontalMotor->setSpeed(str);
    motorSpdTimer->start(800);
    horizontalMotor->setRun();
    motorRunTimer->start(800);
    r2000UdpReceive->startScan();
}

void MainWindow::on_Button_SingleCircle_Start_clicked() {
    signleCircleTimer = QTime::currentTime();
    isSingleCircleStartScan = true;

    isScan = true;
    currentTime = QDateTime::currentDateTime().currentMSecsSinceEpoch();
    statusBar()->showMessage(QStringLiteral("单圈扫描中"));
    ui->label_Device_State->setText(QStringLiteral("单圈扫描中..."));

    ui->Button_SingleCircle_Start->setEnabled(false);
    ui->Button_SingleCircle_Stop->setEnabled(true);

    horizontalMotor->setSpeed();
    motorSpdTimer->start(800);
    horizontalMotor->setRun();
    motorRunTimer->start(800);
    //r2000UdpReceive->startScan();

    /*QTime _Timer = QTime::currentTime();
    QTime _nowTimer;
    do {
        _nowTimer = QTime::currentTime();
    } while(_Timer.msecsTo(_nowTimer) <= 100);
*/

}

void MainWindow::on_Button_SingleCircle_Stop_clicked() {
    isSingleCircleStartScan = false;
    isSingleCircleReset = false;
    singleCircleResetSuccess = false;
    r2000UdpReceive->stopTransmission();

    isScan = false;
    ui->label_Device_State->setText(QStringLiteral("完成扫描"));

    ui->Button_start_scan->setEnabled(true);
    ui->Button_stop_scan->setEnabled(false);
    ui->Button_SingleCircle_Reset->setEnabled(true);
    ui->Button_SingleCircle_Start->setEnabled(false);
    ui->Button_SingleCircle_Stop->setEnabled(false);

    ui->action_Save->setEnabled(true);
}

void MainWindow::on_action_Save_triggered()
{
    QDateTime time = QDateTime::currentDateTime();
    QString cuttentTime = time.toString("yyyy-MM-dd-hh-mm-ss");
    QString PCDFileName = defaultSaveDir + "/" + cuttentTime;
    if(!CP::cloud1->empty())
    {
        CP::cloud1->width = CP::cloud1->size();
        CP::cloud1->height = 1 ;
        CP::cloud1->is_dense = false;
        pcl::io::savePCDFileBinary((PCDFileName + + "-CloudData1.pcd").toStdString(),*CP::cloud1);
    } //savePCDFileASCII
    if(!CP::cloud2->empty())
    {
        CP::cloud2->width = CP::cloud2->size();
        CP::cloud2->height = 1 ;
        CP::cloud2->is_dense = false;
        pcl::io::savePCDFileBinary((PCDFileName + + "-CloudData2.pcd").toStdString(),*CP::cloud2);
    }
    statusBar()->showMessage(QStringLiteral("文件保存成功"),2000);
    updateFileTree();
}
