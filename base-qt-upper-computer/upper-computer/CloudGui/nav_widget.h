#ifndef NAV_WIDGET_H
#define NAV_WIDGET_H
#include <QGLWidget>
#include <QtOpenGL>
#include <GL/glu.h>
#include "pcl/point_types.h"
#include "pcl/point_cloud.h"
#include "globalvariable.h"
class QAction;
struct StopIndex{
    unsigned index;
    Eigen::Quaternionf q;
};

class  Nav_widget : public QGLWidget
{
    Q_OBJECT
public:
     Nav_widget(QWidget *parent = 0);
    ~ Nav_widget();
    GLfloat rotationZ;
    void resetXYZ(void);

protected:
    void initializeGL();
    void resizeGL(int width, int height);
    void paintGL();
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void wheelEvent(QWheelEvent *event);
    void contextMenuEvent(QContextMenuEvent *);
    void keyPressEvent(QKeyEvent *);
private slots:
    void changeR_Mode(void){
        if(R_Mode)
            R_Mode = false;
        else R_Mode = true;
    }
public slots:
    void FullScreen(void);
private:

    void draw();
    void drawBackground();
    GLfloat rotationX;
    GLfloat rotationY;

    float Width;
    float Heigth;

    GLfloat zoom;
    GLfloat x_move;
    GLfloat y_move;
    QPoint lastPos;

    GLint viewport[4];
    GLdouble modelview[16];
    GLdouble projection[16];

    QAction *rotationMode;
    QAction *fullscreen;
    bool R_Mode;

    QRect rect;
    QPoint point;
    //点云管理
    QList<pcl::PointCloud<pcl::PointXYZI>::Ptr> AllCloud;
    //路径显示与管理
    pcl::PointXYZ OriginPoint;//原点

    QList<pcl::PointXYZ> PathPointList;
    QList<StopIndex> StopPoint;//停止点索引与姿态四元数
public:
    void resetOriginPoint(void){ OriginPoint = pcl::PointXYZ(0.0,0.0,0.0);}
    void addPathPoint(pcl::PointXYZ&);
    void MarkStopPoint(Eigen::Quaternionf&);
    void addCloud(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud){AllCloud.push_back(cloud);}//坐标变换之后的点云
    Eigen::Matrix4f Trans;//加入点云时需要先经过此转换矩阵处理
    void updateStopPoint(pcl::PointXYZ&);//点云配准后更新上一个停止点的位置,参数为两停止点之间的XYZ位移
    pcl::PointCloud<pcl::PointXYZI>::Ptr getLastCloud(void);//获取上一次的点云用于配准
};

#endif // GLCLOUD_H
