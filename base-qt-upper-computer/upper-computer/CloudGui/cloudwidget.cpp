#include <QtWidgets>
#include "cloudwidget.h"
#include <QDebug>

float myfloor_00(float x)
{
    qint16 temp = x * 1000.0f;
    x = temp / 1000.0f;
    return x;
}

CloudWidget::CloudWidget(QWidget *parent) :
    QGLWidget(parent),
    R_Mode(true),isCloud2(false),
    showCloud1(true),showCloud2(false),
    ShowDepth(false)
{
    setFormat(QGLFormat(QGL::DoubleBuffer | QGL::DepthBuffer));
    rotationMode = new QAction(QStringLiteral("切换旋转模式"),this);
    cancelAction = new QAction(QStringLiteral("清除上一个点"),this);
    clearAction = new QAction(QStringLiteral("清除所有点"),this);
    fullscreen = new QAction(QStringLiteral("全屏显示"),this);
    OutlierRemoe = new QAction(QStringLiteral("去除离群点"),this);
    showdepth = new QAction(QStringLiteral("显示强度"),this);
    OutlierRemoe->setCheckable(true);
    cancelAction->setEnabled(false);
    clearAction->setEnabled(false);
    connect(clearAction,SIGNAL(triggered()),this,SLOT(clearSelectPoint()));
    connect(cancelAction,SIGNAL(triggered()),this,SLOT(eraseLastPoint()));
    connect(rotationMode,SIGNAL(triggered()),this,SLOT(changeR_Mode()));
    connect(fullscreen,SIGNAL(triggered()),this,SLOT(FullScreen()));
    connect(OutlierRemoe,SIGNAL(triggered(bool)),this,SLOT(CloudOutlierRemoval(bool)));
    connect(showdepth,SIGNAL(triggered(bool)),this,SLOT(showDepth()));
    resetXYZ();
}
CloudWidget::~CloudWidget()
{

}
void CloudWidget::addCloud(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud)
{
    CloudList.append(cloud);
    updateGL();
}

void CloudWidget::CloudOutlierRemoval(bool Checked)
{
    if(Checked)
    {
        if(!CP::cloud1->empty() && CP::cloud2->empty())
        {
            CP::cloud2 = outlierRemoval(CP::cloud1);
            showCloud2 = true;
            showCloud1 = false;
            updateGL();
        }else
            if(!(showCloud2 && showCloud1))
            {
                showCloud2 = true;
                showCloud1 = false;
                updateGL();
            }
    }else
        if(!(showCloud2 && showCloud1)){
            showCloud2 = false;
            showCloud1 = true;
            updateGL();
        }

}
void CloudWidget::keyPressEvent(QKeyEvent *event)
{
    if(event->key() == Qt::Key_Escape)
    {
        setWindowFlags(Qt::SubWindow);
        move(point);
        showNormal();
        resize(rect.width(),rect.height());
    }
}
void CloudWidget::FullScreen(void)
{
    point = pos();
    rect = geometry();
    setWindowFlags(Qt::Window | Qt::FramelessWindowHint);
    showMaximized();
}
void CloudWidget::initializeGL()
{
    qglClearColor(Qt::black);
    glShadeModel(GL_FLAT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
}

void CloudWidget::resizeGL(int width, int height)
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
        glOrtho(-Width,Width,-Heigth,Heigth,-3.0f,500.0f);
    }
    else
    {
        Width = 20.0f * x;
        Heigth = 20.0f;
        glOrtho(-Width,Width,-Heigth,Heigth,-3.0f,500.0f);
    }
    glGetDoublev(GL_PROJECTION_MATRIX,projection);
    glMatrixMode(GL_MODELVIEW);
    //   glLoadIdentity();
}

void CloudWidget::paintGL()
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    draw();
}

void CloudWidget::contextMenuEvent(QContextMenuEvent *)
{
    //qDebug()<< "contextMenuEvent";
    QMenu menu(this);
    menu.addAction(rotationMode);
    menu.addAction(cancelAction);
    menu.addAction(clearAction);
    menu.addAction(fullscreen);
    menu.addAction(OutlierRemoe);
    menu.addAction(showdepth);
    menu.move(cursor().pos());
    menu.exec();
}
void CloudWidget::mousePressEvent(QMouseEvent *event)
{
    lastPos = event->pos();
}

void CloudWidget::mouseMoveEvent(QMouseEvent *event)
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

void CloudWidget::wheelEvent(QWheelEvent *event)
{
    float numDegrees = event->delta() / 8;
    float numSteps = numDegrees / 15;
    zoom *= qPow(1.125, numSteps);
    if(zoom <= 1.0) zoom = 1.0;
    updateGL();
}

void CloudWidget::mouseDoubleClickEvent(QMouseEvent *event)
{
    if(event->button() == Qt::LeftButton)
    {
        GLdouble front_x,front_y,front_z,back_x,back_y,back_z;
        GLfloat x,y;
        x = event->x();
        y = viewport[3]-event->y();

        gluUnProject(x,y,0.0,modelview,projection,viewport
                     ,&front_x,&front_y,&front_z);
        pcl::PointXYZI front,back;
        front.x = front_x; front.y = front_y; front.z = front_z;

        gluUnProject(x,y,1,modelview,projection,viewport
                     ,&back_x,&back_y,&back_z);
        back.x = back_x; back.y = back_y; back.z = back_z;
        pcl::PointXYZI selectPoint;
        if(minDistance(CP::cloud1,front,back,selectPoint))
        {
            pointlist.push_back(selectPoint);
        }else
            if(!CP::cloud2->empty())
            {
                if(minDistance(CP::cloud2,front,back,selectPoint))
                    pointlist.push_back(selectPoint);
            }
        updateGL();
        event->accept();
    }
}

void CloudWidget::draw()
{
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    drawBackground();

    qglColor(QColor(Qt::white));
    renderText(1,15,QStringLiteral("实时点云显示"),QFont(QString("Calisto MT"),12));
    //gluLookAt(0,0,0, 1,0,0, 0,1,0);

    glTranslatef(x_move, y_move, 0);
    glScalef(zoom,zoom,zoom);
    glRotatef(rotationX, 1.0, 0.0, 0.0);
    glRotatef(rotationY, 0.0, 1.0, 0.0);
    glRotatef(rotationZ, 0.0, 0.0, 1.0);
    glGetDoublev(GL_MODELVIEW_MATRIX,modelview);
   // glPointSize(3.0);


    if(CP::UsedSpace.available() > 0)
    {
        quint16 availableNum = CP::UsedSpace.available();
        if(isCloud2)
        {
            for(quint16 i = 0;i < availableNum;i++)
            {
                CP::UsedSpace.acquire();
                foreach(pcl::PointXYZI point,CP::CloudQueue.dequeue())
                    CP::cloud2->push_back(point);
            }
        }else
        {
            for(quint16 i = 0;i < availableNum;i++)
            {
                CP::UsedSpace.acquire();
                foreach(pcl::PointXYZI point,CP::CloudQueue.dequeue())
                    CP::cloud1->push_back(point);
            }
        }
    }

    glPointSize(1.0);
    qglColor(QColor(Qt::white));
    glBegin(GL_POINTS);
    if(!CloudList.empty())
    {
        CP::cloud1->clear();CP::cloud2->clear();
        foreach (pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,CloudList) {
            auto num = cloud->points.size();
            for(size_t i=0;i< num;++i)
                glVertex3f(cloud->points[i].x, cloud->points[i].y,cloud->points[i].z);
        }
    }
    if(!CP::cloud1->empty() && showCloud1)
    {
        auto num = CP::cloud1->points.size();
        if(ShowDepth){
            for(size_t i=0;i< num;++i)
            {
                int rgb = CP::cloud1->points[i].intensity;
                if(rgb > 0)// rgb = 255;
                {
                    rgb += 50;
                    if(rgb > 255) rgb = 255;
                    qglColor(QColor(rgb,rgb,rgb));
                    glVertex3f(CP::cloud1->points[i].x, CP::cloud1->points[i].y,CP::cloud1->points[i].z);
                }
            }
        }else{
            for(size_t i=0;i< num;++i)
                glVertex3f(CP::cloud1->points[i].x, CP::cloud1->points[i].y,CP::cloud1->points[i].z);
        }
    }
    if(!CP::cloud2->empty() && showCloud2)
    {
        auto num = CP::cloud2->points.size();
        if(ShowDepth){
            for(size_t i=0;i< num;++i)
            {
                int rgb = CP::cloud2->points[i].intensity*3;
                if(rgb > 0)
                {
                    rgb += 50;
                    if(rgb > 255) rgb = 255;
                    qglColor(QColor(rgb,rgb,rgb));
                    glVertex3f(CP::cloud2->points[i].x, CP::cloud2->points[i].y,CP::cloud2->points[i].z);
                }
            }
        }else{
            for(size_t i=0;i< num;++i)
                glVertex3f(CP::cloud2->points[i].x, CP::cloud2->points[i].y,CP::cloud2->points[i].z);
        }
    }
    glEnd();

    glBegin(GL_LINES); //坐标线
    qglColor(QColor(Qt::red));
    glVertex3f(0.0, 0.0, 0.0 );
    glVertex3f(0.0, 0.0, 1.0 );
    qglColor(QColor(Qt::blue));
    glVertex3f(0.0, 0.0, 0.0 );
    glVertex3f(1.0, 0.0, 0.0 );
    qglColor(QColor(Qt::green));
    glVertex3f(0.0, 0.0, 0.0 );
    glVertex3f(0.0, 1.0, 00 );
    glEnd();

    qglColor(QColor(Qt::white));
    size_t cont = CP::cloud1->points.size() + CP::cloud2->points.size();
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
    renderText(1,35,QStringLiteral("点数量：%1").arg(str),QFont(("Times"), 13, QFont::Bold));
    if(!pointlist.empty())
    {
        cancelAction->setEnabled(true);
        clearAction->setEnabled(true);
        //标记选择的点
        qglColor(QColor(Qt::red));
        foreach(pcl::PointXYZI point,pointlist)
        {
            glPushMatrix();
            GLUquadricObj *quad;
            quad = gluNewQuadric();
            gluQuadricDrawStyle(quad,GLU_LINE);
            glTranslated(point.x,point.y,point.z);
            gluSphere(quad,0.2/zoom,18,18);
            glPopMatrix();
        }
        foreach(pcl::PointXYZI point,pointlist)
        {
            renderText(point.x,point.y,point.z,QString("x: %1,y: %2,z: %3").arg(QString::number(point.x))
                       .arg(QString::number(point.y)).arg(QString::number(point.z))
                       ,QFont(("Times"), 12, QFont::Bold));
        }

        if(pointlist.size()>= 2)
        {
            glBegin(GL_LINE_STRIP);
            foreach(pcl::PointXYZI point,pointlist)
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

void CloudWidget::resetXYZ(void)
{
    rotationX = -90.0;
    rotationY = 0;
    rotationZ = 90.0;
    zoom = 1.0;
    x_move = -1.7;
    y_move = -2.5;
    isCloud2 = false;
    showCloud1 = true;
    showCloud2 = false;
    OutlierRemoe->setChecked(false);
}

void CloudWidget::drawBackground()
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
bool CloudWidget::minDistance(pcl::PointCloud<pcl::PointXYZI>::Ptr cloud,pcl::PointXYZI &front,pcl::PointXYZI &back,pcl::PointXYZI &targetPoint)
{
    float minDist = 0.07;
    pcl::PointXYZI point;
    point.x = 0; point.y = 0; point.z = 0;point.intensity = 1;
    float AB = qSqrt(qPow(front.x - back.x,2)+ qPow(front.y - back.y,2)+qPow(front.z - back.z,2));
    float AP = qSqrt(qPow(front.x - point.x,2)+ qPow(front.y -point.y,2)+qPow(front.z - point.z,2));
    float BP = qSqrt(qPow(point.x - back.x,2)+ qPow(point.y - back.y,2)+qPow(point.z - back.z,2));
    float temp = (AB + AP + BP)/2;
    float distance = 2*qSqrt(temp*(temp - AB)*(temp - AP)*(temp - BP))/AB;
    minDist = distance;
    targetPoint = point;

    size_t cont = cloud->points.size();
    for(size_t i=0;i< cont;++i)
    {
         AP = qSqrt(qPow(front.x - cloud->points[i].x,2)+ qPow(front.y - cloud->points[i].y,2)+qPow(front.z - cloud->points[i].z,2));
         BP = qSqrt(qPow(cloud->points[i].x - back.x,2)+ qPow(cloud->points[i].y - back.y,2)+qPow(cloud->points[i].z - back.z,2));
         temp = (AB + AP + BP)/2;
         distance = 2*qSqrt(temp*(temp - AB)*(temp - AP)*(temp - BP))/AB;
        if(distance <= minDist)
        {
            minDist = distance;

            targetPoint = cloud->points[i];
        }
    }
    //qDebug()<< minDist;
    if(minDist <= 0.03)
    {
        return true;
    }else
        return false;

}
void CloudWidget::showDepth(void)
{
    if(ShowDepth)
    {
        ShowDepth = false;
        showdepth->setText(QStringLiteral("显示强度"));
    }
    else{
        showdepth->setText(QStringLiteral("不显示强度"));
        ShowDepth = true;
    }
}
