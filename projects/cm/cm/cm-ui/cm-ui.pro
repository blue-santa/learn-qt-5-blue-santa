QT += qml quick

TEMPLATE = app

CONFIG += c++17

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

INCLUDEPATH += source/ \
    ../cm-lib/source

SOURCES += \
    source/main.cpp

RESOURCES += views.qrc \
    assets.qrc \
    components.qrc

# Additional import path used to resolve QML modules in Qt Creator's core model
QML_IMPORT_PATH = $$PWD

LIBS += -L$$PWD/../../shadow-builds/cm-lib/binaries/linux/gcc/x86/debug -lcm-lib

DESTDIR = $$PWD/../../shadow-builds/cm-ui/binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui

