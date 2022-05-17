#ifndef NAV_UDPOBJECT_H
#define NAV_UDPOBJECT_H

#include <QObject>
#include <QUdpSocket>

#define CONNECT_SUCCEE 0xF0
#define CONNECT_FAILED 0xFF
#define NET_ERROR 0x01
class QTimer;
class QFile;
class Nav_udpobject: public QObject
{
    Q_OBJECT
public:
    Nav_udpobject();
    ~Nav_udpobject();
private:
    QUdpSocket *udpsocket;
    QTimer *Msg_Timer;
    QTimer *recivceTimer;
    QFile * txtFile;
signals:
    void connectError(quint8);

public slots:    
    void startRecive(void);

private slots:
   void  Msg_timeout(void);
   void udpReadyread(void);
   void netError(void);

};

#endif // NAV_UDPOBJECT_H
