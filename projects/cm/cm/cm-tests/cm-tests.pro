QT += testlib
QT -= gui
TARGET = client-tests
TEMPLATE = app

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

CONFIG += c++17
CONFIG += console
CONFIG -= app_bundle

INCLUDEPATH += source

SOURCES +=  source/models/client-tests.cpp

message(cm-tests project dir: $${PWD})
DESTDIR = $$PWD/../../shadow-builds/cm-tests/binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
message(cm-tests output_ dir: $${DESTDIR})

