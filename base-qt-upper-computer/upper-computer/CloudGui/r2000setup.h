#ifndef R2000SETUP_H
#define R2000SETUP_H
#include <QString>
#include <QUrl>
#include <QNetworkReply>
#include <QFile>
#include <QTimer>
#include <QNetworkAccessManager>
#include <vector>
#include "ui_mainwindow.h"

using std::vector;

struct sensor_parameter{
    vector<char> feature_flag;
    uint32_t emitter_type;//发射激光类型
    double radial_range_min;//测距半径的最小的距离，单位m
    double radial_range_max;//测量半径的最大的距离，单位m
    double radial_resolution;//测量半径的分辨率，单位m
    double angular_fov;//最大的视场角，单位°
    double angular_resolution;//最大的角分辨率，单位°
    uint32_t scan_frequency_min;//最小的扫描频率，单位Hz
    uint32_t scan_frequency_max;//最大的扫描频率，单位Hz
    uint32_t sampling_rate_min;//最小的采样频率，单位Hz
    uint32_t sampling_rate_max;//最大的采样频率，单位Hz
    uint32_t max_connections;//最大的数据并发链接通道(链接数量)
    uint32_t max_scan_sections;//最大的扫描扇形数(不支持的话为0)
    uint32_t max_data_regions;//最大的数据区域数(每次扫描的数据通道)
};

enum operating_mode{
    measure,//传感器记录数据
    transmitter_off//传感器没有记录测量的数据
};
enum scan_dir{
    cw,//顺时针
    ccw//逆时针
};
enum packet_type{
    A,
    B,
    C
};

struct measure_conf{
    operating_mode operatingmode;//默认的measure
    double scan_frequency;//扫描的频率，默认35Hz
    scan_dir scan_direction;//扫描的方向
    uint32_t samples_per_scan;//一次扫描的采样频率，默认3600
    double scan_frequency_measured;//测量的扫描频率
};
struct connectMsg{
    QString ipaddr;
    uint16_t port;
    bool watchdog;//看门狗使能标志位
    uint32_t watchdogtimeout;
    packet_type packettype;
    int start_angle;//index为0是的角度，默认的值为-1800000，表示为-180°
    uint32_t max_num_points_scan;//一次扫描中输出的采样点数，默认为0，没有限制
};

class R2000Setup
{
public:
    R2000Setup(Ui::MainWindow *pui);
    void setDefaultPara();//设置默认参数
    QString setPara();//设置参数
    QString connectUDPScan();//设置进行udp传输的参数
    QString releaseHandle(QString handle);//释放连接句柄
    QString startScan(QString handle);//开始进行传输
    QString getPara();//获取激光扫描仪的参数
    QString getHandle(QString msg);//从返回的信息中获得连接句柄
    QString getErroeCode(QString msg);//从返回的信息中获得错误码进行分析，“0”为没有错误

private:
    QFile *replyfile;//存储接收到的来自的R2000的返回的数据
    Ui::MainWindow *ui;

    const uint16_t laserClientPort = 8010;//接收端口
    const QString sensor_ip = "192.168.1.10";
    const QString laser_sensor_ip = "192.168.1.20";
    const QString head =  QString("http://")+laser_sensor_ip+"/cmd/";
    const QString get_protocol_info  = head + "get_protocol_info";//获取协议的信息
    const QString list_parameters = head + "list_parameters";//返回参数的列表
    const QString get_parameter = head + "get_parameter";//获取当前的参数
    const QString set_parameter = head + "set_parameter";//设置list后面的参数
    const QString reset_parameter = head + "reset_parameter";//将参数重置为默认值
    const QString reboot_device = head + "reboot_device";//重启动传感器硬件，软启动
    const QString factory_reset = head + "factory_reset";//恢复到出厂设置，相当于无参数的reset_parameter+reboot_device
    //设置默认的参数
    measure_conf measureConf;
    connectMsg conmsg;
};

#endif // R2000SETUP_H
