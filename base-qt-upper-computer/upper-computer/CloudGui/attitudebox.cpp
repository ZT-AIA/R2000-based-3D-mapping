#include "attitudebox.h"
#include <QtWidgets>
#include <GL/glu.h>
#include <QDebug>

AttitudeBox::AttitudeBox(QWidget *parent)
    : QGLWidget(parent),
      connected(false)
{
    setFormat(QGLFormat(QGL::DoubleBuffer | QGL::DepthBuffer));

    rotationX = 0.0f;
    rotationY = 0.0f;
    rotationZ = 0.0f;
}

void AttitudeBox::setRotationXYZ(float Roll,float Pitch,float Yaw)
{
    rotationX = Roll;
    rotationY = Pitch;
    rotationZ = Yaw;
}

void AttitudeBox::initializeGL()
{
    qglClearColor(Qt::black);
    glShadeModel(GL_FLAT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE);
    glEnable(GL_POINT_SMOOTH);
    glEnable(GL_LINE_SMOOTH);
    glHint(GL_POINT_SMOOTH_HINT, GL_NICEST); // Make round points, not square points
    glHint(GL_LINE_SMOOTH_HINT, GL_NICEST);  // Antialias the lines
    glFrontFace( GL_CW ); //顺时针

    glGenTextures(2,m_ImageID);
    QImage image;
    for(int i=1;i!=7;i++)
    {
        if(image.load(QString(":/new/prefix1/picture%1").arg(i)))
            m_ImageID[i-1] = bindTexture(image, GL_TEXTURE_2D);
        else qDebug()<< "load image failed:" << i ;
    }
}

void AttitudeBox::resizeGL(int width, int height)
{
    glViewport(0, 0, width, height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    GLfloat x = GLfloat(width) / height;
    if(width <= height)
        glOrtho(-10.0f,10.0f,-10.0f/x,10.0f/x,-100.0f,500.0f);
    else
        glOrtho(-10.0f*x,10.0f*x,-10.0f,10.0f,-100.0f,500.0f);
    glMatrixMode(GL_MODELVIEW);
}

void AttitudeBox::paintGL()
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    qglColor(QColor(Qt::white));
    renderText(1,15,QStringLiteral("姿态显示"),QFont(QString("Calisto MT"),12));
    if(connected)
        draw();
    else
        drawError();
}

void AttitudeBox::drawError()
{
    renderText(width()/2 - 85,height()/2,QStringLiteral("无可用数据，请连接MTi"),QFont(QString("Calisto MT"),12));
}

float myfloor(float x)
{
    qint16 temp = x * 10.0f;
    x = temp / 10.0f;
    return x;
}

void AttitudeBox::draw()
{
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    glPushMatrix();
    glTranslated(6,-7,0);
    qglColor(QColor(Qt::white));
    renderText(0,0,0,QString( " Yaw:%1").arg(myfloor(rotationZ)),QFont(QString("Calisto MT"),12));
    renderText(0,-1.2,0,QString("Pitch :%1").arg(myfloor(rotationY)),QFont(QString("Calisto MT"),12));
    renderText(0,-2.4,0,QString(" Roll :%1").arg(myfloor(rotationX)),QFont(QString("Calisto MT"),12));
    glPopMatrix();

    glPushMatrix();
    glScalef(3,3,3);
    glRotatef(-90, 1.0, 0.0, 0.0);
    glRotatef(rotationZ, 0.0, 0.0, 1.0);
    glRotatef(rotationY, 0.0, 1.0, 0.0);
    glRotatef(rotationX, 1.0, 0.0, 0.0);

    drawQuad();
    glPopMatrix();

    drawCoordinates();
}


void AttitudeBox::drawCoordinates(void)
{
    glPushMatrix();
    glScalef(1.3,1.3,1.3);

    glTranslated(-7,-6,0);

    glRotatef(-90.0f, 1.0, 0.0, 0.0);
    glRotatef(rotationZ, 0.0, 0.0, 1.0); //Z
    glRotatef(rotationY, 0.0, 1.0, 0.0); //Y
    glRotatef(rotationX, 1.0, 0.0, 0.0); //X


    glBegin(GL_LINES);
    qglColor(QColor(Qt::red));//z
    glVertex3f(0.0, 0.0, 0.0 );
    glVertex3f(0.0, 0.0, 2.5 );
    qglColor(QColor(Qt::blue));//x
    glVertex3f(0.0, 0.0, 0.0 );
    glVertex3f(2.5, 0.0, 0.0 );
    qglColor(QColor(Qt::green));//y
    glVertex3f(0.0, 0.0, 0.0 );
    glVertex3f(0.0, 2.5, 00 );
    glEnd();

    glPushMatrix();
    qglColor(QColor(Qt::red));
    GLUquadricObj *quad;
    quad = gluNewQuadric();
    gluQuadricDrawStyle(quad,GLU_FILL);
    glTranslated(0,0,2.3); //Z
    gluCylinder(quad,0.2,0,0.5,10,5);
    renderText(0.5,0.5,0.5,"Z",this->font());
    glPopMatrix();

    glPushMatrix();
    qglColor(QColor(Qt::blue));
    glTranslated(2.3,0,0); //X
    glRotatef(90.0, 0.0, 1.0, 0.0);
    gluCylinder(quad,0.2,0,0.5,10,5);
    renderText(0.5,0.5,0.5,"X",this->font());
    glPopMatrix();

    glPushMatrix();
    qglColor(QColor(Qt::green));
    glTranslated(0,2.3,0); //Y
    glRotatef(-90.0, 1.0, 0.0, 0.0);
    gluCylinder(quad,0.2,0,0.5,10,5);
    renderText(0.5,0.5,0.5,"Y",this->font());
    glPopMatrix();
    gluDeleteQuadric(quad);

    glPopMatrix();
}

void AttitudeBox::drawQuad()
{
    qglColor(QColor(Qt::white));
    glEnable( GL_TEXTURE_2D );
    glBindTexture(GL_TEXTURE_2D,m_ImageID[0]);
    glBegin(GL_QUADS);    //A up
    glTexCoord2d( 0.0, 0.0f );
    glVertex3f( -1.5, 1.5 ,-1);
    glTexCoord2d( 0.0, 1.0f );
    glVertex3f( 1.5, 1.5 ,-1);
    glTexCoord2d( 1.0, 1.0f );
    glVertex3f( 1.5, 1.5 ,1 );
    glTexCoord2d( 1.0, 0.0f );
    glVertex3f( -1.5, 1.5,1 );
    glEnd( );

    glBindTexture(GL_TEXTURE_2D,m_ImageID[2]);
    glBegin(GL_QUADS);   //B
    glTexCoord2d( 0.0, 0.0f );
    glVertex3f( -1.5, -1.5 ,1);
    glTexCoord2d( 0.0, 1.0f );
    glVertex3f(-1.5, 1.5, 1);
    glTexCoord2d( 1.0, 1.0f );
    glVertex3f( 1.5, 1.5,1 );
    glTexCoord2d( 1.0, 0.0f );
    glVertex3f( 1.5, -1.5,1 );
    glEnd( );

    glBindTexture(GL_TEXTURE_2D,m_ImageID[3]);
    glBegin(GL_QUADS);   //C
    glTexCoord2d( 0.0, 0.0f );
    glVertex3f( 1.5, -1.5 ,1);
    glTexCoord2d( 0.0, 1.0f );
    glVertex3f( 1.5, 1.5, 1);
    glTexCoord2d( 1.0, 1.0f );
    glVertex3f( 1.5, 1.5,-1 );
    glTexCoord2d( 1.0, 0.0f );
    glVertex3f( 1.5, -1.5,-1 );
    glEnd( );

    glBindTexture(GL_TEXTURE_2D,m_ImageID[4]);
    glBegin(GL_QUADS);  //D
    glTexCoord2d( 0.0, 0.0f );
    glVertex3f( 1.5, -1.5 ,-1);
    glTexCoord2d( 0.0, 1.0f );
    glVertex3f( 1.5, 1.5, -1);
    glTexCoord2d( 1.0, 1.0f );
    glVertex3f( -1.5, 1.5,-1 );
    glTexCoord2d( 1.0, 0.0f );
    glVertex3f( -1.5, -1.5,-1 );
    glEnd( );

    glBindTexture(GL_TEXTURE_2D,m_ImageID[5]);
    glBegin(GL_QUADS);
    glTexCoord2d( 0.0, 0.0f );
    glVertex3f( -1.5, -1.5 ,-1);
    glTexCoord2d( 0.0, 1.0f );
    glVertex3f(-1.5, 1.5, -1);
    glTexCoord2d( 1.0, 1.0f );
    glVertex3f( -1.5, 1.5, 1 );
    glTexCoord2d( 1.0, 0.0f );
    glVertex3f( -1.5, -1.5,1 );
    glEnd( );

    glBindTexture(GL_TEXTURE_2D,m_ImageID[1]);
    glBegin(GL_QUADS);   //down
    glTexCoord2d( 0.0, 0.0f );
    glVertex3f( -1.5, -1.5 ,-1);
    glTexCoord2d( 0.0, 1.0f );
    glVertex3f(-1.5, -1.5, 1);
    glTexCoord2d( 1.0, 1.0f );
    glVertex3f( 1.5, -1.5,1 );
    glTexCoord2d( 1.0, 0.0f );
    glVertex3f( 1.5, -1.5,-1 );
    glEnd( );


   glDisable(GL_TEXTURE_2D);
}

