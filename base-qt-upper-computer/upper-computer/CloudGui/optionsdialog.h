#ifndef OPTIONSDIALOG_H
#define OPTIONSDIALOG_H

#include <QDialog>

#define MSG_SET_SPEED 0x00050000
#define MSG_FREQUENCE 0x00060000
#define MSG_AVG_TIMES 0x00070000
#define MSG_DT_MODE 0x00080000
#define MSG_FT_MODE 0x00090000
#define MSG_GET_ALL_PARAM 0x000A0000

class QUdpSocket;
namespace Ui {
class OptionsDialog;
}

enum Mode{
    DT_MODE = 0,
    FT_MODE = 1
};

class OptionsDialog : public QDialog
{
    Q_OBJECT

public:
    explicit OptionsDialog(QWidget *parent = 0);
    ~OptionsDialog();
private:
    float Vertical;
    float Horizontal;
    quint8 Frequence;
    quint8 Avg_Times;
    qint8 mode;
    bool moreButtonChecked;
    quint16 MsgStatus;
    int TimerID;
protected:
    void timerEvent(QTimerEvent *);
    void closeEvent(QCloseEvent *);
private slots:
    void udpReadyread(void);

    void on_pushButton_more_toggled(bool checked);

    void on_pushButton_set_sensor_clicked();

    void on_pushButton_read_set_clicked();

    void on_pushButton_set_speed_clicked();

    void on_Button_add_dir_clicked();

    void on_Button_delete_dir_clicked();

private:
    Ui::OptionsDialog *ui;
    QUdpSocket *udpsocket;
public:
    QStringList dirList;
    int saveDirIndex;
    QString defaultSaveDir;
};

#endif // OPTIONSDIALOG_H
