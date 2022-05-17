#include "glcloud.h"
#include <QtWidgets>

float myfloor_00(float x)
{
    qint16 temp = x * 1000.0f;
    x = temp / 1000.0f;
    return x;
}

glCloud::glCloud(QWidget *parent) :
    QGLWidget(parent),
    R_Mode(true),
    cloud((new pcl::PointCloud<pcl::PointXYZI>))
{
    setFormat(QGLFormat(QGL::DoubleBuffer | QGL::DepthBuffer));
    resetXYZ();
    rotationMode = new QAction(QStringLiteral("切换旋转模式"),this);
    cancelAction = new QAction(QStringLiteral("清除上一个点"),this);
    clearAction = new QAction(QStringLiteral("清除所有点"),this);
    fullscreen = new QAction(QStringLiteral("全屏显示"),this);
    OutlierRemoe = new QAction(QStringLiteral("去除离群点"),this);
    cancelAction->setEnabled(false);
    clearAction->setEnabled(false);
    connect(clearAction,SIGNAL(triggered()),this,SLOT(clearSelectPoint()));
    connect(cancelAction,SIGNAL(triggered()),this,SLOT(eraseLastPoint()));
    connect(rotationMode,SIGNAL(triggered()),this,SLOT(changeR_Mode()));
    connect(fullscreen,SIGNAL(triggered()),this,SLOT(FullScreen()));
    connect(OutlierRemoe,SIGNAL(triggered(bool)),this,SLOT(CloudOutlierRemoval()));
}

glCloud::~glCloud()
{

}

void glCloud::keyPressEvent(QKeyEvent *event)
{
    if(event->key() == Qt::Key_Escape)
    {
        setWindowFlags(Qt::SubWindow);
        move(point);
        showNormal();
        resize(231,131);
    }
}

void glCloud::FullScreen(void)
{
    point = pos();
    rect = geometry();
    setWindowFlags(Qt::Window | Qt::FramelessWindowHint);
    showMaximized();
}

void glCloud::initializeGL()
{
    qglClearColor(Qt::black);
    glShadeModel(GL_FLAT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
}

void glCloud::resizeGL(int width, int height)
{
    glViewport(0, 0, width, height);
    glGetIntegerv(GL_VIEWPORT, viewport);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    GLfloat x = GLfloat(width) / height;
    if(width <= height)
    {
        Width = 20.0;
        Heigth = 20.0f/x;
        glOrtho(-Width,Width,-Heigth,Heigth,-100.0f,500.0f);
    }
    else
    {
        Width = 20.0f * x;
        Heigth = 20.0f;
        glOrtho(-Width,Width,-Heigth,Heigth,-100.0f,500.0f);
    }
    glGetDoublev(GL_PROJECTION_MATRIX,projection);
    glMatrixMode(GL_MODELVIEW);
 //   glLoadIdentity();
}

void glCloud::paintGL()
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    draw();
}

void glCloud::contextMenuEvent(QContextMenuEvent *)
{
    QMenu menu(this);
    menu.addAction(rotationMode);
    menu.addAction(fullscreen);
    menu.addAction(cancelAction);
    menu.addAction(clearAction);
    menu.addAction(OutlierRemoe);
    menu.move(cursor().pos());
    menu.exec();
}

void glCloud::mousePressEvent(QMouseEvent *event)
{
    lastPos = event->pos();
}

void glCloud::mouseMoveEvent(QMouseEvent *event)
{
    GLfloat dx = GLfloat(event->x() - lastPos.x()) / width();
    GLfloat dy = GLfloat(event->y() - lastPos.y()) / height();

    if (event->buttons() & Qt::LeftButton) {
       if(R_Mode)
       {
        rotationX += 180 * dy;
        rotationZ += 180 * dx;
        updateGL();
       }else{
        rotationX += 180 * dy;
        rotationY += 180 * dx;
        updateGL();
       }
    }else if (event->buttons() & Qt::MidButton) {
        x_move += 38.5 * dx;
        y_move -= 38.5 * dy;
        updateGL();
    }
    lastPos = event->pos();
}

void glCloud::wheelEvent(QWheelEvent *event)
{
    float numDegrees = event->delta() / 8;
    float numSteps =  numDegrees / 15;
    zoom *= qPow(1.125, numSteps);
    if(zoom <= 1.0) zoom = 1.0;
    //qDebug()<< "zoom" <<zoom;
    updateGL();
}

void glCloud::mouseDoubleClickEvent(QMouseEvent *event)
{
    if(event->button() == Qt::LeftButton)
    {
        GLdouble front_x,front_y,front_z,back_x,back_y,back_z;
        GLfloat x,y;
        x = event->x();
        y = viewport[3]-event->y();
        gluUnProject(x,y,0.1,modelview,projection,viewport
                     ,&front_x,&front_y,&front_z);
        pcl::PointXYZ front,back;
        front.x = front_x; front.y = front_y; front.z = front_z;

        gluUnProject(x,y,0.9,modelview,projection,viewport
                     ,&back_x,&back_y,&back_z);
        back.x = back_x; back.y = back_y; back.z = back_z;
        pcl::PointXYZ selectPoint;
        if(minDistance(cloud,front,back,selectPoint))
        {
            pointlist.push_back(selectPoint);

        }
        updateGL();
        event->accept();
    }
}

void glCloud::draw()
{
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    drawBackground();
    qglColor(QColor(Qt::white));
    //renderText(1,20,QStringLiteral("点云文件显示"),QFont(QString("Calisto MT"),12));
    glTranslatef(x_move, y_move, 0);
    glScalef(zoom,zoom,zoom);
    glRotatef(rotationX, 1.0, 0.0, 0.0);
    glRotatef(rotationY, 0.0, 1.0, 0.0);
    glRotatef(rotationZ, 0.0, 0.0, 1.0);
    glGetDoublev(GL_MODELVIEW_MATRIX,modelview);
    glPointSize(1.0);

    if(!cloud->empty())
    {
        glPointSize(2.0);
        qglColor(QColor(Qt::white));
        glBegin(GL_POINTS); //GL_TRIANGLES  GL_POINTS
        size_t cont = cloud->points.size();
        for(size_t i=0;i< cont;++i)
        {
            int rgb = cloud->points[i].intensity;
            if(rgb >= 40)
            {
                //if(rgb > 100) rgb += 10;
                qglColor(QColor(rgb,rgb,rgb));
                glVertex3f(cloud->points[i].x, cloud->points[i].y,cloud->points[i].z);
            }

        }
        glEnd();
        glBegin(GL_LINES); //坐标线
            qglColor(QColor(Qt::red));
            glVertex3f(0.0, 0.0, 0.0 );
            glVertex3f(0.0, 0.0, 1.0 );//z
            qglColor(QColor(Qt::blue));
            glVertex3f(0.0, 0.0, 0.0 );
            glVertex3f(1.0, 0.0, 0.0 );//x
            qglColor(QColor(Qt::green));
            glVertex3f(0.0, 0.0, 0.0 );
            glVertex3f(0.0, 1.0, 00 );//y
        glEnd();

        qglColor(QColor(Qt::white)); //show Cloud Point size
        QString str = QString::number(cont % 1000);
        if(cont % 1000 / 10 == 0)
            str = "00" + str;
        else if(cont % 1000 / 100 == 0)
            str = "0" + str;

        cont /= 1000;
        while(cont > 0)
        {
            str = QString::number(cont % 1000) + "," + str;
            cont /= 1000;
        }
        renderText(1,15,QStringLiteral("点数量：%1").arg(str),QFont(("Times"), 10, QFont::Bold));
    }
    if(!pointlist.empty())
        {
            cancelAction->setEnabled(true);
            clearAction->setEnabled(true);
            //标记选择的点
            qglColor(QColor(Qt::red));
            foreach(pcl::PointXYZ point,pointlist)
            {
                glPushMatrix();
                GLUquadricObj *quad;
                quad = gluNewQuadric();
                gluQuadricDrawStyle(quad,GLU_LINE);
                glTranslated(point.x,point.y,point.z);
                gluSphere(quad,0.2/zoom,18,18);
                glPopMatrix();
            }
            if(pointlist.size()>= 2)
            {
                glBegin(GL_LINE_STRIP);
                foreach(pcl::PointXYZ point,pointlist)
                {
                    glVertex3f(point.x,point.y,point.z);
                }
                glEnd();

                for(size_t itr = 0; itr != pointlist.size() - 1; itr++)  //计算距离，显示距离
                {
                    GLdouble winX,winY,z;
                    gluProject((pointlist[itr].x + pointlist[itr+1].x)/2
                            ,(pointlist[itr].y + pointlist[itr+1].y)/2
                            ,(pointlist[itr].z + pointlist[itr+1].z)/2
                            ,modelview,projection,viewport,&winX,&winY,&z);
                   float distance = qSqrt( qPow(pointlist[itr].x - pointlist[itr+1].x,2)
                           + qPow(pointlist[itr].y - pointlist[itr+1].y,2)
                           + qPow(pointlist[itr].z - pointlist[itr+1].z,2) );
                   renderText(winX,viewport[3] - winY,QString::number(myfloor_00(distance))+"m",QFont(("Times"), 12, QFont::Bold));
                }
            }
    }else { // pointlist is empty.
        cancelAction->setEnabled(false);
        clearAction->setEnabled(false);
    }
}
void glCloud::resetXYZ(void)
{
    rotationX = -90.0;
    rotationY = 0;
    rotationZ = 90.0;
    zoom = 1.0;
    x_move = -1.7;
    y_move = -2.5;
}

void glCloud::drawBackground()
{
    glEnable(GL_CULL_FACE);
    glShadeModel(GL_SMOOTH);
    glPushMatrix();
    glTranslatef(0.0f, 0.0f, -499.9f);
    glBegin(GL_QUADS);
    qglColor(QColor(11,23,70));
    glVertex2f(-Width, -Heigth);

    qglColor(QColor(11,23,70));
    glVertex2f(Width, -Heigth);

    qglColor(QColor(30,144,255));
    glVertex2f(Width, Heigth);

    qglColor(QColor(30,144,255));
    glVertex2f(-Width, Heigth);
    glEnd();
    glPopMatrix();
}

bool glCloud::minDistance(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,pcl::PointXYZ &front,pcl::PointXYZ &back,pcl::PointXYZ &targetPoint)
{
    float minDist = 0.1;
    float AB = qSqrt(qPow(front.x - back.x,2)+ qPow(front.y - back.y,2)+qPow(front.z - back.z,2));
    size_t cont = cloud->points.size();
    for(size_t i=0;i< cont;++i)
    {
        float AP = qSqrt(qPow(front.x - cloud->points[i].x,2)+ qPow(front.y - cloud->points[i].y,2)+qPow(front.z - cloud->points[i].z,2));
        float BP = qSqrt(qPow(cloud->points[i].x - back.x,2)+ qPow(cloud->points[i].y - back.y,2)+qPow(cloud->points[i].z - back.z,2));
        float temp = (AB + AP + BP)/2;
        float distance = 2*qSqrt(temp*(temp - AB)*(temp - AP)*(temp - BP))/AB;
        if(distance <= minDist)
        {
            minDist = distance;

            targetPoint.x = cloud->points[i].x;
            targetPoint.y = cloud->points[i].y;
            targetPoint.z = cloud->points[i].z;
        }
    }
    if(minDist <= 0.03)
    {
        return true;
    }else
        return false;

}
