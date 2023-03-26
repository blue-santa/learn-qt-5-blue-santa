QT += qml quick

TEMPLATE = app

CONFIG += c++14

INCLUDEPATH += source/ \
    ../cm-lib/source

SOURCES += \
    source/main.cpp

RESOURCES += views.qrc

# Additional import path used to resolve QML modules in Qt Creator's core model
QML_IMPORT_PATH = $$PWD

LIBS += -L$$PWD/../binaries/ -lcm-lib
# LIBS += -L$$PWD/../../build-cm-Desktop_Qt_6_4_3_GCC_64bit-Debug/cm-lib -lcm-lib
