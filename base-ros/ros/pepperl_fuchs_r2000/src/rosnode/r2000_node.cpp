// Copyright (c) 2014, Pepperl+Fuchs GmbH, Mannheim
// Copyright (c) 2014, Denis Dillenberger
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// * Redistributions of source code must retain the above copyright notice, this
//   list of conditions and the following disclaimer.
//
// * Redistributions in binary form must reproduce the above copyright notice, this
//   list of conditions and the following disclaimer in the documentation and/or
//   other materials provided with the distribution.
//
// * Neither the name of Pepperl+Fuchs nor the names of its
//   contributors may be used to endorse or promote products derived from
//   this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
// ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#include "r2000_node.h"

#include <pepperl_fuchs_r2000/r2000_driver.h>
#include <tf/transform_listener.h>
#include <laser_geometry/laser_geometry.h>
/*******************/

#define dRotationAxis 0.06//扫描仪坐标系的原点距离水平电机旋转轴之间的距离的为dRotationAxis(不确定)
#define horizontalMotor_Per_Pluse 36000//转台电机中的角度的计算，一圈所对应的脉冲数
namespace pepperl_fuchs {

//-----------------------------------------------------------------------------
R2000Node::R2000Node():nh_("~")
{
    driver_ = 0;
    // Reading and checking parameters
    //-------------------------------------------------------------------------
    //param函数在参数服务器中寻找变量有就退出，没有才将第三个变量赋值，launch中以赋值的话这里用param无法赋值，但是可以直接不通过param赋值
    nh_.param("frame_id", frame_id_, std::string("/scan"));
    nh_.param("scanner_ip",scanner_ip_,std::string("192.168.1.20"));
    nh_.param("scan_frequency",scan_frequency_,20);
    nh_.param("samples_per_scan",samples_per_scan_,2400);
 


    if( scanner_ip_ == "" )
    {
        std::cerr << "IP of laser range finder not set!" << std::endl;
        return;
    }
    if( !connect() )
        return;

    usleep((2*1000000));
    // Declare publisher and create timer
    //-------------------------------------------------------------------------
    scan_publisher_ = nh_.advertise<sensor_msgs::LaserScan>("scan",100);
    /************************************************************/
    laser_geometry::LaserProjection projector_;
    //tf::TransformListener tfListener_;
    //tfListener_.setExtrapolationLimit(ros::Duration(0.1));
    cmd_subscriber_ = nh_.subscribe("control_command",100,&R2000Node::cmdMsgCallback,this);
  
    point_cloud_publisher_ = nh_.advertise<sensor_msgs::PointCloud2> ("laser_cloud", 100);
    //tf::TransformListener listener;
    //tf::StampedTransform transform;
    /*//新建联系过多重启设备，但是连不上无法重启
    connect();
     printf("!!!!!!!!!!!!!!!\n");
    driver_->rebootdevice();
    ros::Duration(25.0).sleep();
    printf("@@@@@@@@@\n");
    */
    get_scan_data_timer_ = nh_.createTimer(ros::Duration(1/(2*std::atof(driver_->getParametersCached().at("scan_frequency").c_str()))), &R2000Node::getScanData, this);
}
//######################
void R2000Node::processPointCloudMsg(pcl::PointXYZ* p) {
    //安装的原因，扫描仪的实际x轴斜向下

    float x = p->y;
    float y =-p->x;
    float z = p->z;
    //扫描仪坐标系与载体坐标系将在俯仰角的偏差为45度
    float x1 = x;
    float y1 =  cos(M_PI/4)*y+sin(M_PI/4)*z;
    float z1 = -sin(M_PI/4)*y+cos(M_PI/4)*z;
    //转动角即偏航角的转动的变换
    float x2 =  cos(RotAngle)*x1+sin(RotAngle)*z1;
    float y2 = y1;
    float z2 = -sin(RotAngle)*x1+cos(RotAngle)*z1;
    //扫描坐标系的原点不在转动轴上，此时的距离设置的dRotationAxis
    float x3 = x2+dRotationAxis*sin(RotAngle);
    float y3 = y2;
    float z3 = z2+dRotationAxis*cos(RotAngle);

    //p->x = x3;
    //p->y = y3;
    //p->z = z3;
    //为了显示舒适，进行坐标变换
    p->x = z3;
    p->y = x3;
    p->z = y3;
}
//-----------------------------------------------------------------------------
bool R2000Node::connect()
{

    delete driver_;

    // Connecting to laser range finder
    //-------------------------------------------------------------------------
    driver_ = new R2000Driver();
    std::cout << "Connecting to scanner at " << scanner_ip_ << " ... ";
    if( driver_->connect(this->scanner_ip_,80) )
        std::cout << "OK" << std::endl;
    else
    {
        std::cout << "FAILED!" << std::endl;
        std::cerr << "Connection to scanner at " << scanner_ip_ << " failed!" << std::endl;
        return false;
    }

    // Setting, reading and displaying parameters
    //-------------------------------------------------------------------------
    driver_->setScanFrequency(scan_frequency_);
    driver_->setSamplesPerScan(samples_per_scan_);
    auto params = driver_->getParameters();
    std::cout << "Current scanner settings:" << std::endl;
    std::cout << "============================================================" << std::endl;
    for( const auto& p : params )
        std::cout << p.first << " : " << p.second << std::endl;
    std::cout << "============================================================" << std::endl;

    // Start capturing scanner data
    //-------------------------------------------------------------------------
    std::cout << "Starting capturing: ";
    //if( driver_->startCapturingTCP() )
    if( driver_->startCapturingUDP() )//######################
        std::cout << "OK" << std::endl;
    else
    {
        std::cout << "FAILED!" << std::endl;
        return false;
    }
    return true;
}

//-----------------------------------------------------------------------------
void R2000Node::getScanData(const ros::TimerEvent &e)
{

    if( !driver_->isCapturing() )//
    {

        std::cout << "ERROR: Laser range finder disconnected. Trying to reconnect..." << std::endl;
        while(!connect() )//这里有问题会一直在这里死循环创建连接导致超过连接数
        {
           std::cout << "ERROR: Reconnect failed. Trying again in 2 seconds..." << std::endl;
           usleep((2*1000000));
        }
    }


    

    /*********************** read scandata no encoder******************/
/*
    auto scandata = driver_->getFullScan();//######################
    if( scandata.amplitude_data.empty() || scandata.distance_data.empty() )
        return;
    sensor_msgs::LaserScan scanmsg;
    scanmsg.header.frame_id = frame_id_;
    scanmsg.header.stamp = ros::Time::now();

    scanmsg.angle_min = -M_PI;
    scanmsg.angle_max = +M_PI;
    scanmsg.angle_increment = 2*M_PI/float(scandata.distance_data.size());
    scanmsg.time_increment = 1/35.0f/float(scandata.distance_data.size());

    scanmsg.scan_time = 1/std::atof(driver_->getParametersCached().at("scan_frequency").c_str());
    scanmsg.range_min = std::atof(driver_->getParametersCached().at("radial_range_min").c_str());
    scanmsg.range_max = std::atof(driver_->getParametersCached().at("radial_range_max").c_str());

    scanmsg.ranges.resize(scandata.distance_data.size());
    scanmsg.intensities.resize(scandata.amplitude_data.size());

    std::cout<<scandata.headers[0].packet_type<<"-"<<scandata.headers[0].packet_size<<"-"<<
    scandata.headers[0].header_size<<"-"<<scandata.headers[0].scan_number<<"-"<<
    scandata.headers[0].packet_number<<"-"<<scandata.headers[0].first_angle<<"-"<<
    scandata.headers[0].angular_increment<<"-"<<scandata.headers[0].output_status<<"-"<<
    scandata.headers[0].field_status<<std::endl;
    for( std::size_t i=0; i<scandata.distance_data.size(); i++ )
    {
        scanmsg.ranges[i] = float(scandata.distance_data[i])/1000.0f;
        scanmsg.intensities[i] = scandata.amplitude_data[i];
	//printf("data.size:%lu\n",scandata.distance_data.size());
	//printf("angle_increment:%f\n",scanmsg.angle_increment );
	//printf("time_increment:%f\n",scanmsg.time_increment);
    }
    scan_publisher_.publish(scanmsg);//adv ros laser
 
    sensor_msgs::PointCloud2 cloud;//
    projector_.transformLaserScanToPointCloud("scan", scanmsg, cloud, tfListener_);//"scan" is Coordinate system;lasermsg transform pointcloud
    point_cloud_publisher_.publish(cloud);//adv ros pointcloud
*/
    /*******************************************************/
    
    /***********************************************************/
    
    auto cloudData = driver_->getFullScan();//######################
    if( cloudData.amplitude_data.empty() || cloudData.distance_data.empty() )
        return;
    //timeScanLast = timeScanCur;
    //timeScanCur = cloudData.headers[0].timestamp_sync.tosec();
    //printf("???????????????????");

    double first_angel = double(cloudData.headers[0].first_angle)/10000.0;
    double angular_increment = double(cloudData.headers[0].angular_increment)/10000.0;


    lastPluseCnt = (cloudData.headers[0].output_status);
    curPluseCnt = (cloudData.headers[0].field_status);
    //std::cout<<curPluseCnt<<cloudData.distance_data.size()<<std::endl;
    avg_angle = (curPluseCnt-lastPluseCnt)/cloudData.distance_data.size();//@@@@@@@@@@@@@@@
    pcl::PointCloud<pcl::PointXYZ>  cloudPoints;
    //将激光原始点云转化为pcl存储的点云
    for(uint32_t index = 0; index < cloudData.distance_data.size(); index++) {
        //pcl::PointXYZHSV cloudPoint;
        pcl::PointXYZ  cloudPoint;
        double distance = double(cloudData.distance_data[index])/1000.0;
        if(distance > 50.001 || distance < 0.20)//#####################
            continue;
        double angle = first_angel + index * angular_increment;

        cloudPoint.z = 0.0;
        cloudPoint.x = distance * cos((angle)/180.0*M_PI);
        cloudPoint.y = distance * sin((angle)/180.0*M_PI);

        RotAngle = (double(lastPluseCnt) + avg_angle * index) / horizontalMotor_Per_Pluse * 2 * M_PI;
        processPointCloudMsg(&cloudPoint);
        cloudPoints.push_back(cloudPoint);
	/*
	if(index%2000==0){
	    std::cout<<distance<<"-"<< cloudPoint.x<<"-"<<cloudPoint.y<<"-"<<cloudPoint.z<<"-"<<std::endl;
        }*/
    }

    pcl::toROSMsg(cloudPoints, sensor_cloud);
    //cloudPoints.clear();//局部变量每次自动释放创建
    sensor_cloud.header.frame_id=std::string("laser_cloud"); 
    point_cloud_publisher_.publish(sensor_cloud);//转发一个点云
    
}   

//-----------------------------------------------------------------------------
void R2000Node::cmdMsgCallback(const std_msgs::StringConstPtr &msg)
{
    const std::string& cmd = msg->data;
    static const std::string set_scan_frequency_cmd("set scan_frequency=");
    static const std::string set_samples_per_scan_cmd("set samples_per_scan=");

    // Setting of scan_frequency
    //-------------------------------------------------------------------------
    if( cmd.substr(0,set_scan_frequency_cmd.size()) == set_scan_frequency_cmd )
    {
        std::string value = cmd.substr(set_scan_frequency_cmd.size());
        int frequency = std::atoi(value.c_str());
        if(frequency>=10 && frequency<=50)
        {
            scan_frequency_ = frequency;
            driver_->setScanFrequency(frequency);
        }
    }

    // Setting of samples_per_scan
    //-------------------------------------------------------------------------
    if( cmd.substr(0,set_samples_per_scan_cmd.size()) == set_samples_per_scan_cmd )
    {
        std::string value = cmd.substr(set_samples_per_scan_cmd.size());
        int samples = std::atoi(value.c_str());
        if(samples>=72 && samples<=25200)
        {
            samples_per_scan_ = samples;
            driver_->setSamplesPerScan(samples);
        }
    }
}

//-----------------------------------------------------------------------------
} // NS

int main(int argc, char **argv)
{
    ros::init(argc, argv, "r2000_node", ros::init_options::AnonymousName);
    new pepperl_fuchs::R2000Node();
    ros::spin();
    return 0;
}
