#include "r2000setup.h"
#include <QDebug>

R2000Setup::R2000Setup(Ui::MainWindow *pui)
{
    ui = pui;

    ui->lineEdit_SampleFreq->setText(QString::number(2400));
    ui->lineEdit_ScanFreq->setText(QString::number(20));

    ui->Button_UDP->setEnabled(true);
    ui->Button_ReleaseHandle->setEnabled(false);

    //manager = new QNetworkAccessManager(this);
    replyfile = new QFile("replyfile.txt");
    //reqtime = new QTimer(NULL);
    setDefaultPara();
}
void R2000Setup::setDefaultPara() {
    measureConf.operatingmode = measure;
    measureConf.samples_per_scan = ui->lineEdit_SampleFreq->text().toUInt();
    measureConf.scan_direction = ccw;
    measureConf.scan_frequency = ui->lineEdit_ScanFreq->text().toUInt();
    conmsg.ipaddr = sensor_ip;
    conmsg.packettype = A;
    conmsg.max_num_points_scan = 0;
    conmsg.port = laserClientPort;
    conmsg.watchdog = false;
    conmsg.watchdogtimeout = 60000;
    conmsg.start_angle = -1800000;
}

QString R2000Setup::setPara() {
    QString msg = head;
    QString sample_per_scan = ui->lineEdit_SampleFreq->text();
    QString scan_frequency = ui->lineEdit_ScanFreq->text();
    msg = msg + QString("set_parameter?samples_per_scan=") + sample_per_scan +
            QString("&scan_frequency=") + scan_frequency;
    qDebug()<<msg<<endl;
    return msg;
}

QString R2000Setup::connectUDPScan() {
    QString msg = head;
    msg = msg + QString("request_handle_udp?") + QString("address=")
            + QString(conmsg.ipaddr) + "&port=" + QString::number(conmsg.port);
    if(conmsg.packettype == A)
        msg += "&packet_type=A";
    msg += "&watchdog=off";//关闭传感器的看门狗
    qDebug()<<msg<<endl;
    return msg;
}

QString R2000Setup::startScan(QString handle) {
    ui->Button_UDP->setEnabled(false);
    ui->Button_ReleaseHandle->setEnabled(true);
    QString msg = head;
    msg = msg + QString("start_scanoutput?handle=") + handle;
    qDebug()<<msg<<endl;
    return msg;
}

QString R2000Setup::releaseHandle(QString handle) {
    ui->Button_UDP->setEnabled(true);
    ui->Button_ReleaseHandle->setEnabled(false);
    QString msg = head;
    msg = msg + QString("release_handle?handle=") + handle;
    qDebug()<<msg<<endl;
    return msg;
}

QString R2000Setup::getPara() {
    QString msg= get_parameter;
    qDebug()<<msg<<endl;
    return msg;
}

//获取连接句柄
QString R2000Setup::getHandle(QString msg) {
    if(replyfile) {
        if(replyfile->open(QIODevice::WriteOnly|QIODevice::Append)) {
            QTextStream out(replyfile);
            out << msg << endl;
            replyfile->close();
        }else {
            qDebug()<<"the file is open fail!"<<endl;
        }
    }
    //从msg中找到句柄元素
    const QString handleflag = "\"handle\":\"";
    QString curHandle;
    if(msg.contains(handleflag)) {
        int index = msg.indexOf(QString("handle"));
        index+=9;
        for(int cnt=0;cnt<=20;cnt++) {
            if(msg[index]=='"')
                break;
            curHandle+=msg[index];
            index++;
        }
        ui->lineEdit_Handle->setText(curHandle);
    }
    return curHandle;
}

//获取激光扫描器返回信息中的error code
QString R2000Setup::getErroeCode(QString msg) {
    if(replyfile) {
        if(replyfile->open(QIODevice::WriteOnly|QIODevice::Append)) {
            QTextStream out(replyfile);
            out << msg << endl;
            replyfile->close();
        }else {
            qDebug()<<"the file is open fail!"<<endl;
        }
    }
    const QString errorTextFlag = "\"error_code\":";
    QString curErrorText;
    if(msg.contains(errorTextFlag)) {
        int index = msg.indexOf(QString("error_code"));
        index+=12;
        for(int cnt=0;cnt<=20;cnt++) {
            if(msg[index]==',')
                break;
            curErrorText+=msg[index];
            index++;
        }
    }
    return curErrorText;
}
