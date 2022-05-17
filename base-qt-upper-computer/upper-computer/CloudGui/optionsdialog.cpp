#include "optionsdialog.h"
#include "ui_optionsdialog.h"
#include <QFile>
#include <QDataStream>
#include <QUdpSocket>
#include <QMessageBox>
#include <QFileDialog>
#include <QCloseEvent>
#include <QDebug>
#include <QRegExpValidator>
#include "globalvariable.h"

//ParaFile : Horizontal ,Vertical,Frequence(uint8  1-16),Avg Times(uint8 255),Mode(enum DT:0 FT:1)

OptionsDialog::OptionsDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::OptionsDialog),
    moreButtonChecked(false),
    MsgStatus(0x0000)
{
    ui->setupUi(this);
    ui->progressBar->setVisible(false);
    ui->label_set_error->setVisible(false);
    connect(ui->listWidget,SIGNAL(currentRowChanged(int)),ui->stackedWidget,SLOT(setCurrentIndex(int)));

    //读取设置参数
    QFile ParaFile("parameter.dat");
    if(!ParaFile.open(QIODevice::ReadOnly))
    {
        QMessageBox::warning(this,QStringLiteral("PARA配置文件丢失"),"Can't open Parameter File.");
    }
    QDataStream ParaOut(&ParaFile);
    ParaOut >> Horizontal >> Vertical >> Frequence >> Avg_Times >> mode >> saveDirIndex;
    ParaFile.close();

    QFile DirFile("dir.txt");
    if(!DirFile.open(QIODevice::ReadOnly))
    {
        defaultSaveDir = QDir::currentPath();
        dirList.append(defaultSaveDir);
    }else{
        QTextStream DirOut(&DirFile);
        while(!DirOut.atEnd())
            dirList.append(DirOut.readLine());
        defaultSaveDir = dirList.last();
        dirList.pop_back();
        DirFile.close();
    }
    ui->comboBox_save_dir->addItems(dirList);
    ui->listWidget_dir->addItems(dirList);

    //输入控件校验器
    QRegExp H_re("^1(\\.[0-6])?|0(\\.\\d{1,2})?$"); //0.00 ~~1.60
    QRegExp V_re("^100|[1-9]\\d$");  //1~~100
    QRegExp F_re("^1[0-6]|[1-9]$"); // 1~~16
    QRegExp A_re("^[1-9]\\d|1\\d{1,2}|2[0-4]\\d|25[0-5]$"); //1 ~~ 255

    //显示到界面
    ui->comboBox_save_dir->setCurrentIndex(saveDirIndex);
    ui->VerticalEdit->setText(QString::number(Vertical));
    ui->VerticalEdit->setValidator(new QRegExpValidator(V_re,this));
    ui->HorizontalEdit->setValidator(new QRegExpValidator(H_re,this));
    ui->HorizontalEdit->setText(QString::number(Horizontal));
    ui->lineEdit_frequency->setText(QString::number(Frequence));
    ui->lineEdit_frequency->setValidator(new QRegExpValidator(F_re,this));
    ui->lineEdit_avg_times->setText(QString::number(Avg_Times));
    ui->lineEdit_avg_times->setValidator(new QRegExpValidator(A_re,this));

    ui->lineEdit_V_Resolution->setText(QString::number(60.0f * Vertical * Avg_Times / Frequence / 1000.0f));
    ui->lineEdit_H_Resolution->setText(QString::number(90.0f * Horizontal / Vertical));

    ui->groupBox->setVisible(false);

    ui->comboBox_mode->setCurrentIndex(mode);

    udpsocket = new QUdpSocket(this);
    udpsocket->bind(1234);
    connect(udpsocket,SIGNAL(readyRead()),this,SLOT(udpReadyread()));
}

OptionsDialog::~OptionsDialog()
{
    delete ui;
}

void OptionsDialog::udpReadyread()
{
    while(udpsocket->hasPendingDatagrams())
    {
        qint64 cont = udpsocket->pendingDatagramSize();
        QByteArray datagram;
        datagram.resize(cont);
        udpsocket->readDatagram(datagram.data(),cont);
        QDataStream in(&datagram,QIODevice::ReadOnly);
        in.setByteOrder(QDataStream::LittleEndian);
        in.setFloatingPointPrecision(QDataStream::SinglePrecision);
        quint16 ack0 ,ack;
        in >> ack0 >> ack;
        //qDebug()<< hex << ack;
        switch(ack)
        {
        case 0xFF05:
            ui->label_set_error->setText(QStringLiteral("设置成功"));
            ui->label_set_error->setVisible(true);
            ui->pushButton_set_speed->setEnabled(false);
            break;
        case 0xFF06: MsgStatus = 0xFF07; TimerID = startTimer(500); ui->progressBar->setValue(35); break;
        case 0xFF07: MsgStatus = 0xFF08; TimerID = startTimer(500); ui->progressBar->setValue(65); break;
        case 0xFF08: case 0xFF09:
            ui->progressBar->setValue(100);
            ui->progressBar->setVisible(false);
            ui->pushButton_set_sensor->setEnabled(false);
            break;
        case 0xFF0A:
        {
            QString str;
            char a[640];
            in.readRawData(a,640);
            for(quint16 i = 0;i != 635; i++)
            {
                str.append(a[i]);
            }
            ui->textBrowser->clear();
            ui->textBrowser->setText(str);
            QMessageBox::warning(this,"Read succeed","Ok");
            break;
        }
        default:
            QMessageBox::warning(this,QStringLiteral("设置失败"),QStringLiteral("错误代码") + QString::number(ack,16));
            break;
        }
    }
}

void OptionsDialog::closeEvent(QCloseEvent *event)
{
    saveDirIndex = ui->comboBox_save_dir->currentIndex();
    if(saveDirIndex != -1)
    {
        //写入配置文件
        QFile ParaFile("parameter.dat");
        if(!ParaFile.open(QIODevice::WriteOnly))
        {
            QMessageBox::warning(this,QStringLiteral("PARA配置文件丢失"),"Can't Open Parameter File.");
        }
        QDataStream outfile(&ParaFile);
        outfile << Horizontal << Vertical << Frequence << Avg_Times << mode << saveDirIndex;
        ParaFile.close();

        QFile DirFile("dir.txt");
        if(!DirFile.open(QIODevice::WriteOnly))
            QMessageBox::warning(this,QStringLiteral("Dir配置文件丢失"),DirFile.errorString());
        QTextStream in(&DirFile);
        foreach(QString str,dirList)
            in << str << endl;
        in << dirList.at(saveDirIndex);
        accept();
    }else{
        QMessageBox::warning(this,QStringLiteral("默认保存路径为空"),QStringLiteral("请重新设置保存路径"));
        event->ignore();
    }
}

void OptionsDialog::timerEvent(QTimerEvent *)
{
    QByteArray datagramOut;
    QDataStream out(&datagramOut,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);
    switch(MsgStatus)
    {
    case 0xFF07:
        out << MSG_AVG_TIMES << Avg_Times;
        udpsocket->writeDatagram(datagramOut,QHostAddress(CP::IpAddress),10000);
        killTimer(TimerID);
        break;
    case 0xFF08:
        switch(ui->comboBox_mode->currentIndex())
        {
        case DT_MODE: out << MSG_DT_MODE ; break;
        case FT_MODE: out << MSG_FT_MODE ; break;
        default: QMessageBox::warning(this,"Warning","ComboBox_mode is outrange."); break;
        }
        udpsocket->writeDatagram(datagramOut,QHostAddress(CP::IpAddress),10000);
        killTimer(TimerID);
        break;
    default:
        qDebug()<< "OptionsDialog" << hex << MsgStatus;
        break;
    }//end switch
}

void OptionsDialog::on_pushButton_more_toggled(bool checked)
{
    moreButtonChecked = checked;
    if(checked)
    {
        ui->lineEdit_H_Resolution->setEnabled(false);
        ui->lineEdit_V_Resolution->setEnabled(false);
    }
    else
    {
        ui->lineEdit_H_Resolution->setEnabled(true);
        ui->lineEdit_V_Resolution->setEnabled(true);
    }
}

void OptionsDialog::on_pushButton_read_set_clicked()
{
    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::Truncate);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);
    out << MSG_GET_ALL_PARAM ;
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);
}

void OptionsDialog::on_pushButton_set_sensor_clicked()
{
    QString str;
    str = ui->lineEdit_frequency->text();
    Frequence = str.toUInt();
    str = ui->lineEdit_avg_times->text();
    Avg_Times = str.toUInt();
    mode = ui->comboBox_mode->currentIndex();

    QByteArray datagramOut;
    QDataStream out(&datagramOut,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);

    out << MSG_FREQUENCE << Frequence ;
    udpsocket->writeDatagram(datagramOut,QHostAddress(CP::IpAddress),10000);

    ui->progressBar->setVisible(true);
    ui->progressBar->setValue(1);
}

void OptionsDialog::on_pushButton_set_speed_clicked()
{
    QString str;
    if(moreButtonChecked)
    {
        str = ui->HorizontalEdit->text();
        Horizontal = str.toFloat();
        str = ui->VerticalEdit->text();
        Vertical = str.toFloat();
    }else
    {
        float Res_h,Res_v;
        str = ui->lineEdit_H_Resolution->text();
        Res_h = str.toFloat();
        str = ui->lineEdit_V_Resolution->text();
        Res_v = str.toFloat();
        Vertical = Res_v * Frequence *1000.0f / Avg_Times / 60.0f;
        Horizontal = Res_h * Vertical / 90.0f;
    }

    QByteArray datagram;
    QDataStream out(&datagram,QIODevice::WriteOnly);
    out.setFloatingPointPrecision(QDataStream::SinglePrecision);
    out.setByteOrder(QDataStream::LittleEndian);
    out << MSG_SET_SPEED << Horizontal << Vertical;
    udpsocket->writeDatagram(datagram,QHostAddress(CP::IpAddress),10000);

}

void OptionsDialog::on_Button_add_dir_clicked()
{
    QString dir = QFileDialog::getExistingDirectory(this, tr("Open Directory"));
    //判断是否重复
    if(!dirList.contains(dir))
    {
        dirList.append(dir);
        ui->listWidget_dir->addItem(dir);
        ui->comboBox_save_dir->addItem(dir);
    }
}

void OptionsDialog::on_Button_delete_dir_clicked()
{
    auto itemRow = ui->listWidget_dir->currentRow();
    if(itemRow != -1) //是否有Item被选中
    {
        delete ui->listWidget_dir->takeItem(itemRow);
        ui->comboBox_save_dir->removeItem(itemRow);
        dirList.removeAt(itemRow);
    }
}
