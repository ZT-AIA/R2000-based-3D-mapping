#-------------------------------------------------
#
# Project created by QtCreator 2015-01-19T15:53:09
#
#-------------------------------------------------

QT       += core gui network opengl sql
CONFIG   += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = CloudProcess
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    optionsdialog.cpp \
    cloudwidget.cpp \
    udpobject.cpp \
    globalvariable.cpp \
    nav_udpobject.cpp \
    qcgaugewidget.cpp \
    nav_widget.cpp \
    pcp.cpp \
    ndtthread.cpp \
    r2000setup.cpp \
    motorcontrol.cpp \
    r2000udpreceive.cpp \
    r2000handledata.cpp

HEADERS  += mainwindow.h \
    optionsdialog.h \
    cloudwidget.h \
    udpobject.h \
    globalvariable.h \
    nav_udpobject.h \
    qcgaugewidget.h \
    nav_widget.h \
    pcp.h \
    ndtthread.h \
    r2000setup.h \
    motorcontrol.h \
    r2000udpreceive.h \
    r2000handledata.h

FORMS    += mainwindow.ui \
    optionsdialog.ui

INCLUDEPATH += . "/opt/pylon5/include"\
"/usr/local/include"\
"/usr/include/pcl-1.7"\
"/usr/include/eigen3"\
"/usr/include/vtk-6.3"\
"/usr/include/mysql"\
"/usr/local/include/opencv"\
"/usr/local/include/opencv2"

LIBS += "/usr/lib/x86_64-linux-gnu/libpcl_common.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_io.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_features.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_kdtree.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_filters.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_registration.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_search.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_segmentation.so"\
"/usr/lib/x86_64-linux-gnu/libpcl_visualization.so"\
"/usr/lib/x86_64-linux-gnu/libboost_thread.so"\
"/usr/lib/x86_64-linux-gnu/libboost_system.so"\
"/usr/lib/x86_64-linux-gnu/libboost_date_time.so"\
"/usr/lib/x86_64-linux-gnu/libboost_chrono.so"\
"/usr/lib/x86_64-linux-gnu/libboost_filesystem.so"\
"/usr/lib/x86_64-linux-gnu/libboost_iostreams.so"\
"/usr/lib/x86_64-linux-gnu/libGLU.so"\
"/usr/lib/x86_64-linux-gnu/libflann.so"\
"/usr/lib/x86_64-linux-gnu/libflann_cpp.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_highgui.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_core.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_imgproc.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_legacy.so"\
#"/usr/lib/x86_64-linux-gnu/libopencv_videostab.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_video.so"\
#"/usr/lib/x86_64-linux-gnu/libopencv_superres.so"\
#"/usr/lib/x86_64-linux-gnu/libopencv_stitching.so"\
#"/usr/lib/x86_64-linux-gnu/libopencv_superres.so"\
#"/usr/lib/x86_64-linux-gnu/libopencv_photo.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_calib3d.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_features2d.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_flann.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_ml.so"\
"/usr/lib/x86_64-linux-gnu/libopencv_objdetect.so"\
"/usr/local/lib/libg2o_cli.so"\
"/usr/local/lib/libg2o_core.so"\
"/usr/local/lib/libg2o_csparse_extension.so"\
#"/usr/local/lib/libg2o_deprecated_types_slam3d.so"\
#"/usr/local/lib/libg2o_ext_csparse.so"\
"/usr/local/lib/libg2o_ext_freeglut_minimal.so"\
#"/usr/local/lib/libg2o_incremental.so"\
#"/usr/local/lib/libg2o_interactive.so"\
"/usr/local/lib/libg2o_interface.so"\
"/usr/local/lib/libg2o_opengl_helper.so"\
"/usr/local/lib/libg2o_parser.so"\
"/usr/local/lib/libg2o_simulator.so"\
#"/usr/local/lib/libg2o_solver_cholmod.so"\
"/usr/local/lib/libg2o_solver_csparse.so"\
"/usr/local/lib/libg2o_solver_dense.so"\
"/usr/local/lib/libg2o_solver_eigen.so"\
"/usr/local/lib/libg2o_solver_pcg.so"\
"/usr/local/lib/libg2o_solver_slam2d_linear.so"\
"/usr/local/lib/libg2o_solver_structure_only.so"\
"/usr/local/lib/libg2o_stuff.so"\
"/usr/local/lib/libg2o_types_data.so"\
"/usr/local/lib/libg2o_types_icp.so"\
"/usr/local/lib/libg2o_types_sba.so"\
"/usr/local/lib/libg2o_types_sclam2d.so"\
"/usr/local/lib/libg2o_types_sim3.so"\
"/usr/local/lib/libg2o_types_slam2d.so"\
"/usr/local/lib/libg2o_types_slam2d_addons.so"\
"/usr/local/lib/libg2o_types_slam3d.so"\
"/usr/local/lib/libg2o_types_slam3d_addons.so"\
"/usr/lib/x86_64-linux-gnu/libmysqlclient.so"\
"/opt/pylon5/lib64/lib*.so"
