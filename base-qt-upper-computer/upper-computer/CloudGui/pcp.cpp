#include "pcp.h"
#include <QDebug>
#include <pcl/registration/icp.h>
#include <pcl/registration/icp_nl.h>
#include <pcl/features/normal_3d.h>
#include <pcl/filters/passthrough.h>

/**匹配一对点云数据集并且返还结果
  *参数 cloud_src 是源点云
  *参数 cloud_src 是目标点云
  *参数output输出的配准结果的源点云
  *参数final_transform是在来源和目标之间的转换
  */
/*
void pairAlign (const PointCloud::Ptr cloud_src, const PointCloud::Ptr cloud_tgt, PointCloud::Ptr output, Eigen::Matrix4f &final_transform, bool downsample)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr filter_cloud3 (new pcl::PointCloud<pcl::PointXYZ>);
    pcl::PointCloud<pcl::PointXYZ>::Ptr filter_cloud4 (new pcl::PointCloud<pcl::PointXYZ>);
    pcl::PointCloud<pcl::PointXYZ>::Ptr filter_cloud1 (new pcl::PointCloud<pcl::PointXYZ>);
    pcl::PointCloud<pcl::PointXYZ>::Ptr filter_cloud2 (new pcl::PointCloud<pcl::PointXYZ>);
  //为了一致性和高速的下采样
  //注意：为了大数据集需要允许这项
  PointCloud::Ptr src (new PointCloud);
  PointCloud::Ptr tgt (new PointCloud);
  pcl::VoxelGrid<PointT> grid;
  if (downsample)
  {
      qDebug() << "downsample";
    grid.setLeafSize (0.05, 0.05, 0.05);
    grid.setInputCloud (cloud_src);
    grid.filter (*src);
    grid.setInputCloud (cloud_tgt);
    grid.filter (*tgt);
  }
  else
  {
    src = cloud_src;
    tgt = cloud_tgt;
  }

  pcl::StatisticalOutlierRemoval<pcl::PointXYZ> sor;
  sor.setInputCloud(src);
  sor.setMeanK(50);
  sor.setStddevMulThresh(1.0);
  sor.filter(*filter_cloud3);

  sor.setInputCloud(tgt);
  sor.setMeanK(50);
  sor.setStddevMulThresh(1.0);
  sor.filter(*filter_cloud4);
  qDebug() << "StatisticalOutlierRemoval";

  pcl::PassThrough<pcl::PointXYZ> pass;
  pass.setInputCloud(filter_cloud3);
  pass.setFilterFieldName("y");
  pass.setFilterLimits(0.0,15.0);
  pass.filter(*filter_cloud1);

  pass.setInputCloud(filter_cloud4);
  pass.setFilterFieldName("y");
  pass.setFilterLimits(0.0,15.0);
  pass.filter(*filter_cloud2);

  //计算曲面法线和曲率
  PointCloudWithNormals::Ptr points_with_normals_src (new PointCloudWithNormals);
  PointCloudWithNormals::Ptr points_with_normals_tgt (new PointCloudWithNormals);
  pcl::NormalEstimation<PointT, PointNormalT> norm_est;
  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ> ());

  norm_est.setSearchMethod (tree);
  norm_est.setKSearch (30);
  norm_est.setInputCloud (filter_cloud1);
  norm_est.compute (*points_with_normals_src);

  pcl::copyPointCloud (*filter_cloud1, *points_with_normals_src);
    qDebug() << "KdTree1";
  norm_est.setInputCloud (filter_cloud2);
      qDebug() << "KdTree2";
  norm_est.compute (*points_with_normals_tgt);
      qDebug() << "KdTree3";
  pcl::copyPointCloud (*filter_cloud2, *points_with_normals_tgt);
qDebug() << "PointCloudWithNormals";
  // 配准
  pcl::IterativeClosestPointNonLinear<PointNormalT, PointNormalT> reg;
  reg.setTransformationEpsilon (1e-6);
  //将两个对应关系之间的(src<->tgt)最大距离设置为10厘米
  //注意：根据你的数据集大小来调整
  reg.setMaxCorrespondenceDistance (1);
  reg.setRANSACIterations(100);
  //icp.setEuclideanFitnessEpsilon (1);
  reg.setRANSACOutlierRejectionThreshold (0.1);
  reg.setInputCloud (points_with_normals_src);
  reg.setInputTarget (points_with_normals_tgt);
  //
  //在一个循环中运行相同的最优化并且使结果可视化
  Eigen::Matrix4f Ti = Eigen::Matrix4f::Identity (), prev, targetToSource;
  PointCloudWithNormals::Ptr reg_result = points_with_normals_src;
  reg.setMaximumIterations (100);
  for (int i = 0; i < 10; ++i)
  {
    qDebug() << QString("Iteration Nr. %1").arg(i) << endl;
    points_with_normals_src = reg_result;
    //估计
    reg.setInputCloud (points_with_normals_src);
    reg.align (*reg_result);
        //在每一个迭代之间累积转换
    Ti = reg.getFinalTransformation () * Ti;
        //如果这次转换和之前转换之间的差异小于阈值
        //则通过减小最大对应距离来改善程序
    std::cout<< "FitnessScore ：" << reg.getFitnessScore() << std::endl << "getFinalTransformation ：" << std::endl << Ti << std::endl;
    if (fabs ((reg.getLastIncrementalTransformation () - prev).sum ()) < reg.getTransformationEpsilon ())
      reg.setMaxCorrespondenceDistance (reg.getMaxCorrespondenceDistance () - 0.001);
      prev = reg.getLastIncrementalTransformation ();
  }
    //
  // 得到目标点云到源点云的变换
  targetToSource = Ti;//.inverse();
  //
  //把目标点云转换回源框架
  pcl::transformPointCloud (*cloud_src, *output, Ti);

  //添加源点云到转换目标
    final_transform = targetToSource;
 }
*/
pcl::PointCloud<pcl::PointXYZI>::Ptr
outlierRemoval(pcl::PointCloud<pcl::PointXYZI>::ConstPtr inputCloud)
{
    // Create the filtering object
    pcl::PointCloud<pcl::PointXYZI>::Ptr cloud_filtered(new pcl::PointCloud<pcl::PointXYZI>);
    pcl::StatisticalOutlierRemoval<pcl::PointXYZI> sor;
    sor.setInputCloud(inputCloud);
    sor.setMeanK(50);
    sor.setStddevMulThresh(1.0);
    sor.filter(*cloud_filtered);

    return cloud_filtered;
}

void RemoveNearPoint(pcl::PointCloud<pcl::PointXYZI>::Ptr inputCloud,float distance)
{
    for(pcl::PointCloud<pcl::PointXYZI>::iterator it = inputCloud->begin(); it != inputCloud->end() ;)
    {
        if(qPow(it->x,2) + qPow(it->y,2) + qPow(it->z,2) <= qPow(distance,2))
        {
            it = inputCloud->erase(it);
        }else it++;
    }
}

void MovePoint(pcl::PointCloud<pcl::PointXYZ>::Ptr inputCloud,float x,float y,float z)
{
    for(pcl::PointCloud<pcl::PointXYZ>::iterator it = inputCloud->begin(); it != inputCloud->end() ;it++)
    {
       it->x = it->x + x;
       it->y = it->y + y;
       it->z = it->z + z;
    }
}
/*
//    leaf_size << 0.2,0.2,0.2;
void VoxelGrid(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,const Eigen::Vector3f &leaf_size,
                   QList<pcl::PointCloud<pcl::PointXYZI>::Ptr> &voxel_cloud_list)
{
    pcl::PointXYZI min,max;
    pcl::getMinMax3D(*cloud,min,max);

    // Compute the minimum and maximum bounding box values
    int div_b_x = qFloor((max.x - min.x) / leaf_size[0]) + 1;
    int div_b_y = qFloor((max.y - min.y) / leaf_size[1]) + 1;
    int div_b_z = qFloor((max.z - min.z) / leaf_size[2]) + 1;

    for(int i = 0; i!= div_b_x * div_b_y *div_b_z; i++)
    {
        pcl::PointCloud<pcl::PointXYZI>::Ptr cd(new pcl::PointCloud<pcl::PointXYZI>);
        voxel_cloud_list.push_back(cd);
    }

    size_t cont = cloud->points.size();
    for(size_t i=0;i< cont;++i)
    {
        int ijk0 = qFloor((cloud->points[i].x -min.x )/ leaf_size[0]);
        int ijk1 = qFloor((cloud->points[i].y -min.y )/ leaf_size[1]);
        int ijk2 = qFloor((cloud->points[i].z -min.z )/ leaf_size[2]);

        int idx = ijk0 + ijk1 *  div_b_x + ijk2 * div_b_y *  div_b_x;
        voxel_cloud_list[idx]->push_back(cloud->points[i]);
    }
}
bool CompareNormal_str(const normal_str v1,const normal_str v2)
{
    return(v1.value < v2.value);
}
void CalculateNormalVector(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud, Feature_struct &ft_st)
{
    const float alf = 1.0;
    Eigen::Matrix3f covariance_matrix;
    Eigen::Vector4f xyz_centroid;
    pcl::compute3DCentroid(*cloud,xyz_centroid);
    ft_st.centre << alf * xyz_centroid[0] ,alf * xyz_centroid[1] , alf * xyz_centroid[2];

    pcl::computeCovarianceMatrix(*cloud,xyz_centroid,covariance_matrix); // computer covariance_matrix
    covariance_matrix = covariance_matrix / 3.0; //just /3.0

    Eigen::EigenSolver<Eigen::Matrix3f> es(covariance_matrix);

    QList<normal_str> normal_str_list;
    normal_str normal;
    for(int i= 0;i !=3 ; i++)
    {
        std::complex<float> lambl;
        lambl = es.eigenvectors().col(i)[0] ;
        normal.vector << lambl.real();
        lambl = es.eigenvectors().col(i)[1] ;
        normal.vector[1] = lambl.real();
        lambl = es.eigenvectors().col(i)[2] ;
        normal.vector[2] = lambl.real();

        lambl = es.eigenvalues()[i];   //PCA analysis
        normal.value = lambl.real();

        normal_str_list.push_back(normal);
    }//sort r1 < r2 <r3
    qSort(normal_str_list.begin(),normal_str_list.end(),CompareNormal_str);
    float p = 2.0*(normal_str_list[1].value - normal_str_list[0].value) /
            (normal_str_list[0].value + normal_str_list[1].value + normal_str_list[2].value);
    float c = (normal_str_list[2].value - normal_str_list[1].value) /
            (normal_str_list[0].value + normal_str_list[1].value + normal_str_list[2].value);
    ft_st.v1 = c * normal_str_list[0].vector ;   // c*v1  v1 is normal vector
    ft_st.v3 = p * normal_str_list[2].vector ;  //p*v3
    if(ft_st.v1.dot(ft_st.centre) >= 0)  // Unified normal vector direction
        ft_st.v1 = - ft_st.v1;
    Eigen::Vector3f Z(0.0,0.0,1.0);
    if(ft_st.v3.dot(Z) <= 0)   //Unified Z up direction
        ft_st.v3 = - ft_st.v3;
}*/

/*
void SegmentPlanar(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,
                   QList<pcl::PointCloud<pcl::PointXYZI>::Ptr> &cloud_plane_list)
{
    // Create the segmentation object for the planar model and set all the parameters
      pcl::SACSegmentation<pcl::PointXYZI> seg;
      pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
      pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);

      pcl::PointCloud<pcl::PointXYZI>::Ptr cloud_f (new pcl::PointCloud<pcl::PointXYZI>);


      seg.setOptimizeCoefficients (true);
      seg.setModelType (pcl::SACMODEL_PLANE);
      seg.setMethodType (pcl::SAC_RANSAC);
      seg.setMaxIterations (100);
      seg.setDistanceThreshold (0.02);

      int nr_points = (int) cloud->points.size ();
      while (cloud->points.size () > 0.3 * nr_points)
      {
        // Segment the largest planar component from the remaining cloud
        seg.setInputCloud (cloud);
        seg.segment (*inliers, *coefficients);
        if (inliers->indices.size () == 0)
        {
          std::cout << "Could not estimate a planar model for the given dataset." << std::endl;
          break;
        }

        // Extract the planar inliers from the input cloud
        pcl::ExtractIndices<pcl::PointXYZI> extract;
        extract.setInputCloud (cloud);
        extract.setIndices (inliers);
        extract.setNegative (false);

        pcl::PointCloud<pcl::PointXYZI>::Ptr cloud_plane (new pcl::PointCloud<pcl::PointXYZI>);

        // Get the points associated with the planar surface
        extract.filter (*cloud_plane);
        cloud_plane_list.push_back(cloud_plane);
        std::cout << "PointCloud representing the planar component: " << cloud_plane->points.size () << " data points." << std::endl;

        // Remove the planar inliers, extract the rest
        extract.setNegative (true);
        extract.filter (*cloud_f);
        *cloud = *cloud_f;
      }

} */
