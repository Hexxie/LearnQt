include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

QT += testlib
QT -= gui
TARGET = client-tests

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle

TEMPLATE = app

LIBS += -L$$PWD/../binaries/$$DESTINATION_PATH -lcm-lib

INCLUDEPATH += src

SOURCES +=  src/models/tst_clienttests.cpp
