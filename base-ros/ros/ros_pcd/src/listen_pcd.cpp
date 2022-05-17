#include<ros/ros.h>
#include<tf/transform_listener.h>
#include <sensor_msgs/PointCloud2.h>
// PCL specific includes
#include<pcl_conversions/pcl_conversions.h>
#include <pcl/common/transforms.h>
#include<pcl/point_cloud.h>
#include<pcl/point_types.h>
#include<pcl/filters/voxel_grid.h>
using namespace std;
ros::Publisher pub;
pcl::PointCloud<pcl::PointXYZ> oldcloud;
Eigen::Matrix3f rotation_R;
double x=0,y=0,z=0,w=0;
double tx=0,ty=0,tz=0;


void 
cloud_cb(const sensor_msgs::PointCloud2ConstPtr &sensor_newcloud_ptr)
{
    pcl::PointCloud<pcl::PointXYZ> newcloud;
    sensor_msgs::PointCloud2 sensor_newcloud=*sensor_newcloud_ptr;
    pcl::fromROSMsg (sensor_newcloud, newcloud);
    
    Eigen::Matrix4f T_4x4 = Eigen::Matrix4f::Identity();
    T_4x4(0,0)=rotation_R(0,0);
    T_4x4(0,1)=rotation_R(0,1);
    T_4x4(0,2)=rotation_R(0,2);
    T_4x4(1,0)=rotation_R(1,0);
    T_4x4(1,1)=rotation_R(1,1);
    T_4x4(1,2)=rotation_R(1,2);
    T_4x4(2,0)=rotation_R(2,0);
    T_4x4(2,1)=rotation_R(2,1);
    T_4x4(2,2)=rotation_R(2,2);
    T_4x4(0,3)=tx;
    T_4x4(1,3)=ty;
    T_4x4(2,3)=tz;
    std::cout<<"T_4x4:"<<std::endl;
    std::cout<<T_4x4<<std::endl;
    //pcl::transformPointCloud (newcloud, out_pc, rotate);
    pcl::PointCloud<pcl::PointXYZ> rcloud;
    pcl::transformPointCloud(newcloud, rcloud, T_4x4);
    oldcloud=oldcloud+rcloud;
    pcl::toROSMsg(oldcloud, sensor_newcloud);   
/*
    pcl::PCLPointCloud2 cloud_filtered;
    pcl::PointCloud<pcl::PointXYZ> cloud;
    // Perform the actual filtering
    pcl::VoxelGrid<pcl::PCLPointCloud2> sor;
    sor.setInputCloud (cloud);
    sor.setLeafSize (0.1, 0.1, 0.1);
    sor.filter (cloud_filtered);*/

    // Publish the data
    sensor_newcloud.header.frame_id = "clouds";

    pub.publish (sensor_newcloud);
}

int
main (int argc, char** argv)
{
    // Initialize ROS
    ros::init(argc, argv,"my_pcl_tutorial");
    ros::NodeHandle nh;

    // Create a ROS subscriber for the input point cloud
    ros::Subscriber sub = nh.subscribe("/r2000_node/cloud2",10, cloud_cb);
    tf::TransformListener listener;
    // Create a ROS publisher for the output point cloud
    pub = nh.advertise<sensor_msgs::PointCloud2> ("pcd",10);
    ros::Rate rate(50.0);
    while(nh.ok()){

	tf::StampedTransform transform;
	//listener.lookupTransform("world","/turtle1",ros::Time(0),transform);		
	try{
		//listener.lookupTransform("/turtle2","/turtle1",ros::Time(0),transform);
		//listener.waitForTransform("world","/turtle1",ros::Time(0),ros::Duration(1.0));
		listener.lookupTransform("world","/turtle1",ros::Time(0),transform);		
	}
	catch(tf::TransformException &ex){
		//ROS_ERROR("%s",ex.what());
		//ros::Duration(1.0).sleep();
		continue;		
	}
	//rotation 4
    	x=transform.getRotation().getX();
    	y=transform.getRotation().getY();
   	z=transform.getRotation().getZ();
    	w=transform.getRotation().getW();
	Eigen::Quaternionf rotation_q(x,y,z,w);
	rotation_R = rotation_q.toRotationMatrix();//to 3x3r
	std::cout<<"R 3x3:"<<std::endl;
	std::cout<<rotation_R<<std::endl;
	//pingyi
	tx=transform.getOrigin().x();
	ty=transform.getOrigin().y();
	tz=transform.getOrigin().z();
	std::cout<<"R:"<<x<<" "<<y<<" "<<z<<" "<<w<<std::endl;	
	std::cout<<"T:"<<transform.getOrigin().x()<<" "<<transform.getOrigin().y()<<" "<<transform.getOrigin().z()<<std::endl;	
	//ROS_INFO("R:%f,%f,%f,%f",x,y,z,w);
    	//ROS_INFO("T:%f,%f,%f",transform.getOrigin().x(),transform.getOrigin().y(),transform.getOrigin().z());

    	ros::spinOnce ();
	rate.sleep();
	}
}

