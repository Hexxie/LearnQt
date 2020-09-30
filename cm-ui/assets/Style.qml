pragma Singleton
import QtQuick 2.0

Item {
    property alias fontAwesome: fontAwesomeLoader.name
    readonly property color colourBackground: "#efefef"

    //colours for navigation buttons
    readonly property color colourNavigationBarBackground: "#000000"
    readonly property color colourNavigationBarFont: "#ffffff"
    readonly property int pixelSizeNavigationBarIcon: 42
    readonly property int pixelSizeNavigationBarText: 22

    //icon 80x80 and description 80x240
    readonly property real widthNavigationButtonIcon: 80
    readonly property real heightNavigationButtonIcon: widthNavigationButtonIcon
    readonly property real widthNavigationButtonDescription: 160
    readonly property real heightNavigationButtonDescription: heightNavigationButtonIcon
    readonly property real widthNavigationButton: widthNavigationButtonIcon + widthNavigationButtonDescription
    readonly property real heightNavigationButton: Math.max(heightNavigationButtonIcon, heightNavigationButtonDescription)

    //toggle expanded/collapsed functionality
    readonly property real widthNavigationBarCollapsed: widthNavigationButtonIcon
    readonly property real heightNavigationBarExpanded: widthNavigationButton

    FontLoader {
        id: fontAwesomeLoader
        source: "qrc:/assets/fas.ttf"
    }
}
