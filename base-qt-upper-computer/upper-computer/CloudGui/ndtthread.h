#ifndef NDTTHREAD_H
#define NDTTHREAD_H
#include <QThread>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/registration/ndt.h>
class NDTThread : public QThread
{
    Q_OBJECT
public:
    explicit NDTThread(QObject *parent = 0);
    NDTThread(pcl::PointCloud<pcl::PointXYZ>::Ptr target
              ,pcl::PointCloud<pcl::PointXYZ>::Ptr input);
    void setInit(Eigen::Matrix4f&);
protected:
    void run();

public slots:
signals:
    void resultReady(Eigen::Matrix4f); //jiang xiugai
    //void resultReady(Eigen::Matrix4f&);
private:
    pcl::PointCloud<pcl::PointXYZ>::Ptr target_cloud;
    pcl::PointCloud<pcl::PointXYZ>::Ptr input_cloud;
    Eigen::Matrix4f init_guess;
};

#endif // NDTTHREAD_H
