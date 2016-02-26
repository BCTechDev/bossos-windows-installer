#-------------------------------------------------
#
# Project created by QtCreator 2014-09-24T11:25:58
#
#-------------------------------------------------

CONFIG += c++11

QT       -= gui

TARGET = xsys
TEMPLATE = lib
CONFIG += staticlib

SOURCES += \
    xsys.cpp \
    blobs.cpp \
    xlocale.cpp \
    xtimezone.cpp \
    xkeybord.cpp \
    xutil.cpp \
    xdiskutil.cpp

HEADERS += \
    xsys.h \
    blobs.h \
    xutil.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

DESTDIR = ./
CONFIG(debug, debug|release) {
    mac: TARGET = $$join(TARGET,,,_debug)
    win32: TARGET = $$join(TARGET,,,d)
}

RESOURCES += \
    xsys.qrc \

