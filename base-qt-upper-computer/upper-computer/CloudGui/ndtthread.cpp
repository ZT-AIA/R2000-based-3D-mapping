#include "ndtthread.h"
#include <pcl/registration/ndt.h>
#include <pcl/filters/approximate_voxel_grid.h>
#include <QDebug>
NDTThread::NDTThread(pcl::PointCloud<pcl::PointXYZ>::Ptr target
                     ,pcl::PointCloud<pcl::PointXYZ>::Ptr input):
    target_cloud(target),input_cloud(input)
{
    //pcl::copyPointCloud<pcl::PointXYZI, pcl::PointXYZ>(*cloudA, *doncloud);
    //pcl::transformPointCloud (*input_cloud, *output_cloud, ndt.getFinalTransformation ());
}
NDTThread::NDTThread(QObject *parent) :
    QThread(parent)
{

}

void NDTThread::setInit(Eigen::Matrix4f& M4f)
{
    init_guess = M4f;
}

void NDTThread::run()
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr filtered_cloud (new pcl::PointCloud<pcl::PointXYZ>);
    pcl::ApproximateVoxelGrid<pcl::PointXYZ> approximate_voxel_filter;
    approximate_voxel_filter.setLeafSize (0.2, 0.2, 0.2);
    approximate_voxel_filter.setInputCloud (input_cloud);
    approximate_voxel_filter.filter (*filtered_cloud);

    // Initializing Normal Distributions Transform (NDT).
    pcl::NormalDistributionsTransform<pcl::PointXYZ, pcl::PointXYZ> ndt;

    // Setting scale dependent NDT parameters
    // Setting minimum transformation difference for termination condition.
    ndt.setTransformationEpsilon (0.01);
    // Setting maximum step size for More-Thuente line search.
    ndt.setStepSize (0.1);
    //Setting Resolution of NDT grid structure (VoxelGridCovariance).
    ndt.setResolution (1.0);

    // Setting max number of registration iterations.
    ndt.setMaximumIterations (35);

    // Setting point cloud to be aligned.
    ndt.setInputSource (filtered_cloud);
    // Setting point cloud to be aligned to.
    ndt.setInputTarget (target_cloud);

    pcl::PointCloud<pcl::PointXYZ>::Ptr output_cloud (new pcl::PointCloud<pcl::PointXYZ>);
    ndt.align (*output_cloud, init_guess);

    emit resultReady(ndt.getFinalTransformation());
    qDebug()<< "ndt finished" << ndt.getFitnessScore();
}
