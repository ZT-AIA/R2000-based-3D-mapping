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

#ifndef R2000_NODE_H
#define R2000_NODE_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/PointCloud2.h>
#include <laser_geometry/laser_geometry.h>
#include <tf/transform_listener.h>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/common/transforms.h>
#include<pcl_conversions/pcl_conversions.h>
namespace pepperl_fuchs {
class R2000Driver;

//! \class R2000Node
//! \brief ROS driver node for the Pepperl+Fuchs R2000 laser range finder
class R2000Node
{
public:
    //! Initialize and connect to laser range finder
    R2000Node();
    void processPointCloudMsg(pcl::PointXYZ* p);

    //! Callback function for control commands
    void cmdMsgCallback( const std_msgs::StringConstPtr& msg );
     ros::NodeHandle nh_;
private:
    //! Connect to the laser range finder
    //! @returns True on success, false otherwise
    bool connect();
    
    //! Time callback function for getting data from the driver and sending them out
    void getScanData( const ros::TimerEvent& e);

    //! Internal ROS node handle
    //ros::NodeHandle nh_;

    //! Callback timer for getScanData(...)
    ros::Timer get_scan_data_timer_;

    //! ROS publisher for publishing scan data
    ros::Publisher scan_publisher_;
/*********************************/
    tf::TransformListener tfListener_;
    tf::TransformListener listener;
    tf::StampedTransform transform;
    ros::Publisher point_cloud_publisher_;
    laser_geometry::LaserProjection projector_;

    //! ROS subscriber for receiving control commands
    ros::Subscriber cmd_subscriber_;

    //! frame_id of sensor_msgs/Laserscan messages
    std::string frame_id_;

    //! IP or hostname of laser range finder
    std::string scanner_ip_;

    //! scan_frequency parameter
    int scan_frequency_;

    //! samples_per_scan parameter
    int samples_per_scan_;
    //#######################################
    //处理接收到的原始点云数据
    bool systemInited;//是否已经接收到点云，确立连续模式的初始点
    double initTimestamp;//初始时间戳
    double timeScanCur;//当前处理的点云数据的时间戳
    double timeScanLast;//上次处理的点云数据的时间戳
    //当前脉冲数
    int32_t curPluseCnt;//当前帧转台电机的脉冲数
    int32_t lastPluseCnt;//上一帧转台电机的脉冲数
    double  avg_angle;//每个点之间的转台平均脉冲数
    double  RotAngle;//每个点对应的转台实际角度
    //pcl::PointCloud<pcl::PointXYZ>  cloudPoints;//局部变量每次自动释放创建
    sensor_msgs::PointCloud2 sensor_cloud;
    //! Pointer to driver
    R2000Driver* driver_;
};
}

#endif // R2000_NODE_H
