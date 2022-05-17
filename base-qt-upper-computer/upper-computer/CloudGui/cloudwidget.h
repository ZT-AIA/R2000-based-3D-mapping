#ifndef CLOUDWIDGET_H
#define CLOUDWIDGET_H

#include <QGLWidget>
#include <QtOpenGL>
#include <GL/glu.h>
#include "pcl/point_types.h"
#include "pcl/point_cloud.h"
#include "pcp.h"
#include "globalvariable.h"
class CloudWidget : public QGLWidget
{
    Q_OBJECT
public:
    CloudWidget(QWidget *parent = 0);
    ~CloudWidget();
    GLfloat rotationZ;
    void resetXYZ(void);
    void addCloud(pcl::PointCloud<pcl::PointXYZI>::Ptr);
protected:
    void initializeGL();
    void resizeGL(int width, int height);
    void paintGL();
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void mouseDoubleClickEvent(QMouseEvent *event);
    void wheelEvent(QWheelEvent *event);
    void contextMenuEvent(QContextMenuEvent *);
    void keyPressEvent(QKeyEvent *);
public slots:
    void clearSelectPoint(void){ pointlist.clear(); updateGL();}
    void eraseLastPoint(void){ pointlist.removeLast(); updateGL();}
    void FullScreen(void);
    void changeR_Mode(void){
        if(R_Mode)
            R_Mode = false;
        else R_Mode = true;
    }
    void showDepth(void);
    void SaveToCloud2(void){isCloud2 = true; showCloud2 = true;}
    void OutlierRemovalSetEnable(bool enable){OutlierRemoe->setEnabled(enable);}
    void CloudOutlierRemoval(bool);
private:
    void draw();
    void drawBackground();
    /*bool CloudWidget::minDistance(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,
                                  pcl::PointXYZI &front,pcl::PointXYZI &back,
                                  pcl::PointXYZI &targetPoint);*/
    bool minDistance(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,
                                  pcl::PointXYZI &front,pcl::PointXYZI &back,
                                  pcl::PointXYZI &targetPoint);
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
    QList<pcl::PointXYZI> pointlist;
    QList<pcl::PointCloud<pcl::PointXYZI>::Ptr> CloudList;
    QAction *cancelAction;
    QAction *clearAction;
    QAction *rotationMode;
    QAction *fullscreen;
    QAction *OutlierRemoe;
    QAction *showdepth;
    bool R_Mode;
    bool ShowDepth;
    bool isCloud2;//点云是否保存到cloud2中

    QRect rect; //保存控
    QPoint point;//    件位置
    bool showCloud1;
    bool showCloud2;
};

#endif // CLOUDWIDGET_H
