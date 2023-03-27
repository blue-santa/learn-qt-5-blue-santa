import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Client Management")

    Text {
        text: masterController.ui_welcomeMessage
    }
}
