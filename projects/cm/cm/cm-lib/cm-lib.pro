QT -= gui

TARGET = cm-lib
TEMPLATE = lib

CONFIG += c++14

DEFINES += CMLIB_LIBRARY

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

INCLUDEPATH += source

SOURCES += source/models/client.cpp \
    source/controllers/master-controller.cpp \
    source/data/data-decorator.cpp \
    source/data/datetime-decorator.cpp \
    source/data/enumerator-decorator.cpp \
    source/data/int-decorator.cpp \
    source/data/string-decorator.cpp \
    source/framework/command.cpp \
    source/controllers/command-controller.cpp

HEADERS += source/cm-lib_global.h \
    source/data/data-decorator.h \
    source/data/datetime-decorator.h \
    source/data/enumerator-decorator.h \
    source/data/int-decorator.h \
    source/data/string-decorator.h \
    source/models/client.h \
    source/controllers/master-controller.h \
    source/controllers/navigation-controller.h \
    source/framework/command.h \
    source/controllers/command-controller.h

message(cm-lib project dir: $${PWD})

DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
message(cm-lib output dir: $${DESTDIR})
