#include "nav_widget.h"
#include <QtWidgets>


Nav_widget::Nav_widget(QWidget *parent) :
    QGLWidget(parent),
    R_Mode(true),
    OriginPoint(pcl::PointXYZ(0.0,0.0,0.0))
{
    setFormat(QGLFormat(QGL::DoubleBuffer | QGL::DepthBuffer));
    resetXYZ();
    rotationMode = new QAction(QStringLiteral("切换旋转模式"),this);
    fullscreen = new QAction(QStringLiteral("全屏显示"),this);
    connect(rotationMode,SIGNAL(triggered()),this,SLOT(changeR_Mode()));
    connect(fullscreen,SIGNAL(triggered()),this,SLOT(FullScreen()));

    Eigen::Translation3f init_translation(0, 0, 0);
    Eigen::Quaternionf q1(1,0,0,0);
    Trans = (init_translation*q1).matrix();//初始化为单位矩阵
}

void Nav_widget::addPathPoint(pcl::PointXYZ& point)
{
    PathPointList.push_back(point);
}

void Nav_widget::MarkStopPoint(Eigen::Quaternionf& q)
{
    StopIndex stoppoint;
    stoppoint.index = PathPointList.size() - 1;
    stoppoint.q = q;
    StopPoint.push_back(stoppoint);
}
void Nav_widget::updateStopPoint(pcl::PointXYZ& p)
{
    auto end = StopPoint.end() - 1;
    if(end->index > PathPointList.size()-1)
    {
        pcl::PointXYZ SPoint = PathPointList[end->index];
        PathPointList[end->index].x = PathPointList[(end-1)->index].x + p.x;
        PathPointList[end->index].y = PathPointList[(end-1)->index].y + p.y;
        PathPointList[end->index].z = PathPointList[(end-1)->index].z + p.z;
        for(unsigned int i = end->index + 1;i < PathPointList.size(); i++)
        {
            PathPointList[i].x = PathPointList[end->index].x + PathPointList[i].x - SPoint.x;
            PathPointList[i].y = PathPointList[end->index].y + PathPointList[i].y - SPoint.y;
            PathPointList[i].z = PathPointList[end->index].z + PathPointList[i].z - SPoint.z;
        }
    }else{
        PathPointList[end->index].x = PathPointList[(end-1)->index].x + p.x;
        PathPointList[end->index].y = PathPointList[(end-1)->index].y + p.y;
        PathPointList[end->index].z = PathPointList[(end-1)->index].z + p.z;
    }
}
pcl::PointCloud<pcl::PointXYZI>::Ptr Nav_widget::getLastCloud(void)
{
    if(AllCloud.empty())
        return 0;
    else
        return AllCloud.last();
}

Nav_widget::~Nav_widget()
{

}

void Nav_widget::keyPressEvent(QKeyEvent *event)
{
    if(event->key() == Qt::Key_Escape)
    {
        setWindowFlags(Qt::SubWindow);
        move(point);
        resize(rect.width(),rect.height());
        showNormal();
    }
}
void Nav_widget::FullScreen(void)
{
    point = pos();
    rect = geometry();
    setWindowFlags(Qt::Window | Qt::FramelessWindowHint);
    showMaximized();
}

void Nav_widget::initializeGL()
{
    qglClearColor(Qt::black);
    glShadeModel(GL_FLAT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
}

void Nav_widget::resizeGL(int width, int height)
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
}

void Nav_widget::paintGL()
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    draw();
}

void Nav_widget::contextMenuEvent(QContextMenuEvent *)
{
    QMenu menu(this);
    menu.addAction(rotationMode);
    menu.addAction(fullscreen);
    menu.move(cursor().pos());
    menu.exec();
}

void Nav_widget::mousePressEvent(QMouseEvent *event)
{
    lastPos = event->pos();
}

void Nav_widget::mouseMoveEvent(QMouseEvent *event)
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

void Nav_widget::wheelEvent(QWheelEvent *event)
{
    float numDegrees = event->delta() / 8;
    float numSteps =  numDegrees / 15;
    zoom *= qPow(1.125, numSteps);
    if(zoom <= 1.0) zoom = 1.0;
    //qDebug()<< "zoom" <<zoom;
    updateGL();
}

void Nav_widget::draw()
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

    if(!AllCloud.empty())
    {
        glPointSize(1.0);
        qglColor(QColor(Qt::white));
        glBegin(GL_POINTS); //GL_TRIANGLES  GL_POINTS
        for(int j = 0;j < AllCloud.size();j++)
        {
            size_t cont = AllCloud[j]->points.size();
            for(size_t i=0;i< cont;++i)
            {
                glVertex3f(AllCloud[j]->points[i].x, AllCloud[j]->points[i].y,AllCloud[j]->points[i].z);
            }
        }
        glEnd();
        /*glBegin(GL_LINES); //坐标线
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
        renderText(1,15,QStringLiteral("点数量：%1").arg(str),QFont(("Times"), 10, QFont::Bold));*/
    }
    if(!PathPointList.empty())
    {
        //标记目前所处的位置
        glLineWidth(2);
        qglColor(QColor(Qt::red));
        if(PathPointList.size()>= 2)
        {
            //pcl::PointXYZ tempLocation = OriginPoint;
            QList<pcl::PointXYZ>::const_iterator it = PathPointList.begin();
            glBegin(GL_LINE_STRIP);
            for(  ;it != PathPointList.end() ; it++ )
            {
                glVertex3f(it->x,it->y,it->z);
            }
            glEnd();
            {
                glPushMatrix();
                qglColor(QColor(Qt::green));
                GLUquadricObj *quad;
                quad = gluNewQuadric();
                gluQuadricDrawStyle(quad,GLU_LINE);
                glTranslated((it-1)->x,(it-1)->y,(it-1)->z);
                gluSphere(quad,0.12/zoom,18,18);
                glPopMatrix();

                renderText(1,15,QStringLiteral("位置：X:%1   Y:%2   Z:%3").arg(QString::number((it-1)->x,'g',3))
                           .arg(QString::number((it-1)->y,'g',3)).arg(QString::number((it-1)->z,'g',3)),QFont(("Times"), 10, QFont::Bold));
            }
        }
    }
}
void Nav_widget::resetXYZ(void)
{
    rotationX = -90.0;
    rotationY = 0;
    rotationZ = 90.0;
    zoom = 1.0;
    x_move = -1.7;
    y_move = -2.5;
}

void Nav_widget::drawBackground()
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
