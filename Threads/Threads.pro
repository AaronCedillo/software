#-------------------------------------------------
#
# Project created by QtCreator 2019-04-05T10:51:30
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Threads
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        threads.cpp \
    notepad.cpp \
    password.cpp

HEADERS += \
        threads.h \
    notepad.h \
    password.h

FORMS += \
        threads.ui \
    password.ui

RC_ICONS = ArtificialIntelligence.ico

win32 {
    CONFIG(release, debug|release): LIBS += -LC:/opencv/x86/vc12/lib -lopencv_core2413 -lopencv_imgproc2413 -lopencv_highgui2413
    CONFIG(debug, debug|release): LIBS += -LC:/opencv/x86/vc12/lib -lopencv_core2413d  -lopencv_imgproc2413d -lopencv_highgui2413d

    INCLUDEPATH += C:/opencv/include
    DEPENDPATH += C:/opencv/include
}

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    icons.qrc

DISTFILES += \
    iconfinder_folder_299060.ico
