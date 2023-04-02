import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

import assets 1.0
import components 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Client Management")

    Component.onCompleted: contentFrame.replace("qrc:/views/DashboardView.qml")

    Connections {
        target: masterController.ui_navigationController
        onGoCreateClientView: contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView: contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoEditClientView: contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient: client})
        onGoFindClientView: contentFrame.replace("qrc:/views/FindClientView.qml")
    }

    Rectangle {
        id: navigationBar
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        width: 100
        color: "#000000"

        Column {
            NavigationButton {
            }
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf015"
                }
                Text {
                    color: "#ffffff"
                    text: "Dashboard"
                }
            }
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf234"
                }
                Text {
                    color: "#ffffff"
                    text: "New Client"
                }
            }
            Row {
                Text {
                    font {
                        family: Style.fontAwesome
                        pixelSize: 42
                    }
                    color: "#ffffff"
                    text: "\uf002"
                }
                Text {
                    color: "#ffffff"
                    text: "Find Client"
                }
            }

        }
    }

    StackView {
        id: contentFrame
        anchors {
            top:parent.top
            bottom: parent.bottom
            right: parent.right
            left: navigationBar.right
        }
        initialItem: "qrc:/views/SplashView.qml"
        clip: true
    }
}
