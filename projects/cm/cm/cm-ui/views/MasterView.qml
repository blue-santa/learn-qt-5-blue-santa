import QtQuick
import QtQuick.Controls 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Client Management")

    StackView {
        id: contentFrame
        initialItem: "qrc:/views/SplashView.qml"
    }
}
