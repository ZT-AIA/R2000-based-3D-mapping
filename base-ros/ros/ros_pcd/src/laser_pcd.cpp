#include<ros/ros.h>
#include<tf/transform_listener.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/LaserScan.h>
// PCL specific includes
#include<pcl_conversions/pcl_conversions.h>
#include <pcl/common/transforms.h>
#include<pcl/point_cloud.h>
#include<pcl/point_types.h>
#include<pcl/filters/voxel_grid.h>

#include <pcl/io/pcd_io.h>
#include <iostream>
#include <ctime>
using namespace std;
ros::Publisher pub_laser;
ros::Publisher pub_pcd;
//pcl::PointCloud<pcl::PointXYZ> oldcloud;
pcl::PointCloud<pcl::PointXYZ>::Ptr oldcloud(new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::PointXYZ> cloud_filtered;
pcl::PCDWriter writer;

//sub pcl adv pcl
void 
cloud_cb(const sensor_msgs::PointCloud2ConstPtr &sensor_newcloud_ptr)
{
    pcl::PointCloud<pcl::PointXYZ> newcloud;
    sensor_msgs::PointCloud2 sensor_newcloud=*sensor_newcloud_ptr;
    pcl::fromROSMsg(sensor_newcloud, newcloud);
    
    *oldcloud=*oldcloud+newcloud;
    //std::cout<<oldcloud->size()<<std::endl;


    //pcl::PCLPointCloud2 cloud_filtered;
    //pcl::PointCloud<pcl::PointXYZ> cloud;

/*  
    // Perform the actual filtering
    if(oldcloud->size()%500000<=5000)//
    {
       pcl::VoxelGrid<pcl::PointXYZ> sor;
       sor.setInputCloud (oldcloud);
       sor.setLeafSize (0.2, 0.2, 0.2);
       sor.filter(cloud_filtered);
       *oldcloud=cloud_filtered;
       std::cout<<"filtering"<<std::endl;
    }
*/

    //save file   ---pcl_viewer pcl.pcd 
    if((oldcloud->size()%500000<2000)&&(oldcloud->size()>400000))  
    {  
        
        std::time_t now = std::time(0);
        // 把 now 转换为字符串形式
        
	std::tm *ltm= localtime(&now);
        std::string filename=std::to_string(1900+ltm->tm_year)+"-"+std::to_string(1+ltm->tm_mon)+"-"+\
    	std::to_string(ltm->tm_mday)+"-"+std::to_string(ltm->tm_hour)+":"+\
    	std::to_string(ltm->tm_min)+":"+std::to_string(ltm->tm_sec);
        std::cout <<filename<<std::endl;
        
        /*
        viewer1->removeAllPointClouds();  // 移除当前所有点云
        viewer1->addPointCloud(oldcloud, "realsense pcl");
        viewer1->updatePointCloud(oldcloud, "realsense pcl");
        viewer1->spinOnce(0.1);*/
        //pcl::visualization::CloudViewer viewer("Simple Cloud Viewer");
        //viewer.addCoordinateSystem(); 
        //viewer.showCloud (oldcloud); 
        
	//oldcloud->width =oldcloud->size();
	//oldcloud->height = 1;
	//oldcloud->is_dense = true;
        //oldcloud->points.resize(oldcloud->size());
        filename= std::string("/home/zt/ZT/pcl/")+filename+ std::string(".pcd");
	pcl::PCDWriter writer;
        std::cout<<
        writer.write(filename, *oldcloud,false)<<
        //pcl::io::savePCDFileASCII("/home/zt/ZT/pcl/pcl2.pcd", *oldcloud)<<
        //pcl::io::savePCDFileBinary("/home/zt/ZT/pcl/pcl3.pcd", *oldcloud)<<
        std::endl;
        std::cout<<"writer file"<<"----"<<oldcloud->size()<<std::endl;	
    }

    pcl::toROSMsg(*oldcloud, sensor_newcloud);   
    // Publish the data
    sensor_newcloud.header.frame_id = "laser_cloud";
  
    pub_pcd.publish (sensor_newcloud);
}

//sub laser adv pcl
void 
laser_cb(const sensor_msgs::LaserScanConstPtr &sensor_LaserScan_ptr)
{
    
    sensor_msgs::LaserScan sensor_LaserScan=*sensor_LaserScan_ptr;
    tf::TransformListener tfListener_;
    tfListener_.setExtrapolationLimit(ros::Duration(0.1));
    pcl::PointCloud<pcl::PointXYZ> newcloud;
    //pcl::fromROSMsg (sensor_newcloud, newcloud);
    
 
    //oldcloud=oldcloud+newcloud;
    //pcl::toROSMsg(oldcloud, sensor_newcloud);   
/*
    pcl::PCLPointCloud2 cloud_filtered;
    pcl::PointCloud<pcl::PointXYZ> cloud;
    // Perform the actual filtering
    pcl::VoxelGrid<pcl::PCLPointCloud2> sor;
    sor.setInputCloud (cloud);
    sor.setLeafSize (0.1, 0.1, 0.1);
    sor.filter (cloud_filtered);*/

    // Publish the data
    //sensor_newcloud.header.frame_id = "laser_cloud";

    pub_laser.publish (sensor_LaserScan);
}

int
main (int argc, char** argv)
{
    // Initialize ROS
    ros::init(argc, argv,"global_map");
    ros::NodeHandle nh;
    //启动雷达可能会连接两次，单片机就会转发两次数据其中一次没配准，等丢失的那次超过看门狗时间挂掉
    //usleep((7*1000000))；
    // Create a ROS subscriber for the input point cloud
    ros::Subscriber sub_pcd = nh.subscribe("/r2000_node/laser_cloud",10, cloud_cb);
    
    //Create a ROS subscriber for the input laser
    //ros::Subscriber sub_laser = nh.subscribe("/r2000_node/scan",100, laser_cb);
    // Create a ROS publisher for the output point cloud
    pub_pcd = nh.advertise<sensor_msgs::PointCloud2> ("piontclouds",10);
    //pub_laser = nh.advertise<sensor_msgs::LaserScan> ("laser",10);

    ros::spin();

}

