pragma Singleton
import QtQuick 2.9

Item {
    property alias fontAwesome: fontAwesomeLoader.name
    readonly property color colourBackground: "#efefef"

    readonly property color colourNavigationBarBackground: "#000000"
    readonly property color colourNavigationBarFont: "#ffffff"
    readonly property int pixelSizeNavigationBarIcon: 42

    readonly property real widthNavigationButtonIcon: 80
    readonly property real heightNavigationButtonIcon: widthNavigationButtonIcon
    readonly property real widthNavigationButtonDescription: 160
    readonly property real heightNavigationButtonDescription: heightNavigationButtonIcon
    readonly property real widthNavigationButton: widthNavigationButtonIcon + widthNavigationButtonDescription
    readonly property real heightNavigationButton: Math.max(heightNavigationButtonIcon, heightNavigationButtonDescription)

    readonly property real widthNavigationBarCollapsed: widthNavigationButtonIcon
    readonly property real heightNavigationBarExpanded: widthNavigationButton

    readonly property int pixelSizeNavigationBarText: 22

    FontLoader {
        id: fontAwesomeLoader
        source: "qrc:/assets/fontawesome.ttf"
    }
}
