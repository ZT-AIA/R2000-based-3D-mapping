#ifndef ATTITUDEBOX_H
#define ATTITUDEBOX_H
#include <QtOpenGL>
#include <QtMath>
#include <QImage>

class AttitudeBox : public QGLWidget
{
    Q_OBJECT

public:
    AttitudeBox(QWidget *parent = 0);
    void setconnected(bool con){connected = con;}

protected:
    void initializeGL();
    void resizeGL(int width, int height);
    void paintGL();
    void draw();
private:
    void drawCoordinates();
    void drawError(void);

    bool connected;

    GLfloat rotationX;
    GLfloat rotationY;
    GLfloat rotationZ;

    void drawQuad(void);
    GLuint m_ImageID[6];
public:
    void setRotationXYZ(float Roll,float Pitch,float Yaw);
};
#endif // ATTITUDEBOX_H
