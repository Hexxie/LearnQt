include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

QT += qml quick

CONFIG += c++11

LIBS += -L$$PWD/../binaries/$$DESTINATION_PATH -lcm-lib
message($${LIBS})

INCLUDEPATH += src \
    ../cm-lib/src

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        src/main.cpp

RESOURCES += views.qrc \
    assets.qrc \
    components.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = $$PWD

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
