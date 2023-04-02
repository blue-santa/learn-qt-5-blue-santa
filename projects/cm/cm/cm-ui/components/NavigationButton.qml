import QtQuick 2.9
import assets 1.0

Item {
    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text
    Row {
        Text {
            font {
                family: Style.fontAwesome
                pixelSize: 42
            }
            color: "#ffffff"
            text: "\uf0c9"
        }
        Text {
            color: "#ffffff"
            text: ""
        }
    }
}

