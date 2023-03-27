QT -= gui
TARGET = cm-lib
TEMPLATE = lib
CONFIG += c++17
DEFINES += CMLIB_LIBRARY

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

INCLUDEPATH += source

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += source/models/client.cpp \
    source/controllers/master-controller.cpp

HEADERS += \
    source/cm-lib_global.h \
    source/controllers/master-controller.h \
    source/models/client.h

message(cm-lib project dir: $${PWD})
DESTDIR = $$PWD/../../shadow-builds/cm-lib/binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
message(cm-lib output_ dir: $${DESTDIR})
