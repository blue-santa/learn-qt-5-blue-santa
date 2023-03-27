QT += qml quick

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

TEMPLATE = app

CONFIG += c++14

INCLUDEPATH += source/ \
    ../cm-lib/source

SOURCES += \
    source/main.cpp

RESOURCES += views.qrc

# Additional import path used to resolve QML modules in Qt Creator's core model
QML_IMPORT_PATH = $$PWD

message(cm-ui project dir: $${PWD})
DESTDIR = $$PWD/../../shadow-builds/cm-ui/binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
message(cm-ui output_ dir: $${DESTDIR})


LIBS += -L$$PWD/../../shadow-builds/cm-lib/binaries/linux/gcc/x86/debug -lcm-lib
# LIBS += -L$$PWD/../../build-cm-Desktop_Qt_6_4_3_GCC_64bit-Debug/cm-lib -lcm-lib
