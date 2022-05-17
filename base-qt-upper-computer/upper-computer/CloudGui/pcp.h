#ifndef PCP
#define PCP
//#include <pcl/kdtree/kdtree_flann.h>
#include "pcl/filters/statistical_outlier_removal.h"
#include <pcl/ModelCoefficients.h>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/filters/voxel_grid.h>
#include <Eigen/Eigenvalues>

#include <QList>
#include <QtMath>
/*typedef pcl::PointXYZI PointT;
typedef pcl::PointCloud<PointT> PointCloud;
typedef pcl::PointNormal PointNormalT;
typedef pcl::PointCloud<PointNormalT> PointCloudWithNormals;
typedef struct{
    float value;
    Eigen::Vector3f vector;
}normal_str;
typedef struct{
    Eigen::Vector3f centre;
    Eigen::Vector3f v1;
    Eigen::Vector3f v3;
}Feature_struct;*/
pcl::PointCloud<pcl::PointXYZI>::Ptr
outlierRemoval(pcl::PointCloud<pcl::PointXYZI>::ConstPtr inputCloud);
/*
void pairAlign (const PointCloud::Ptr cloud_src, const PointCloud::Ptr cloud_tgt, PointCloud::Ptr output, Eigen::Matrix4f &final_transform, bool downsample = false);

void RemoveNearPoint(pcl::PointCloud<pcl::PointXYZI>::Ptr inputCloud,float distance);
void MovePoint(pcl::PointCloud<pcl::PointXYZ>::Ptr inputCloud,float x,float y,float z);

//void SegmentPlanar(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,
//                   QList<pcl::PointCloud<pcl::PointXYZI>::Ptr> &cloud_plane_list);

void VoxelGrid(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,const Eigen::Vector3f &leaf_size,
                   QList<pcl::PointCloud<pcl::PointXYZI>::Ptr> &voxel_cloud_list);

void CalculateNormalVector(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud, Feature_struct &ft_st);
*/
#endif // PCP

