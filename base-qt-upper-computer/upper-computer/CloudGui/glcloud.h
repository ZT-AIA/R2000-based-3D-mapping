#ifndef GLCLOUD_H
#define GLCLOUD_H
#include <QGLWidget>
#include <QtOpenGL>
#include <GL/glu.h>
#include "pcl/point_types.h"
#include "pcl/point_cloud.h"
#include "pcp.h"

class QAction;

class glCloud : public QGLWidget
{
    Q_OBJECT
public:
    glCloud(QWidget *parent = 0);
    ~glCloud();
    GLfloat rotationZ;
    void resetXYZ(void);
    void setCloud(pcl::PointCloud<pcl::PointXYZI>::Ptr Ptrcloud) {cloud = Ptrcloud; }

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
private slots:
    void clearSelectPoint(void){ pointlist.clear(); updateGL();}
    void eraseLastPoint(void){ pointlist.removeLast(); updateGL();}
    void changeR_Mode(void){
        if(R_Mode)
            R_Mode = false;
        else R_Mode = true;
    }

public slots:
    void FullScreen(void);
    void CloudOutlierRemoval(void){
        if(!cloud->empty())
        {
            OutlierRemoe->setEnabled(false);
            cloud = outlierRemoval(cloud);
        }
    }
private:

    void draw();
    void drawBackground();
    bool minDistance(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,
                                  pcl::PointXYZ &front,pcl::PointXYZ &back,
                                  pcl::PointXYZ &targetPoint);
    GLfloat rotationX;
    GLfloat rotationY;

    float Width;
    float Heigth;

    GLfloat zoom;
    GLfloat x_move;
    GLfloat y_move;
    QPoint lastPos;
    pcl::PointCloud<pcl::PointXYZI>::Ptr cloud;
    GLint viewport[4];
    GLdouble modelview[16];
    GLdouble projection[16];
    QList<pcl::PointXYZ> pointlist;

    QAction *cancelAction;
    QAction *clearAction;
    QAction *rotationMode;
    QAction *fullscreen;
    QAction *OutlierRemoe;
    bool R_Mode;

    QRect rect;
    QPoint point;
};

#endif // GLCLOUD_H
