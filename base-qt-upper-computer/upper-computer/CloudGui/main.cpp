#include "mainwindow.h"
#include <QApplication>
#include <QMutex>
#include <QString>
//#include <QMessageBox>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    if(argc > 1)
    {
        QString file_path(argv[1]);
        w.OpenPCD_file(file_path);
        //QMessageBox::warning(&w,"notice",file_path);
    }

    return a.exec();
}
