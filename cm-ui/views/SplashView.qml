import QtQuick 2.15

//Having a splash view like this is great if you’ve got an application with quite
//a lot of initialization to do, and you can’t really have non-blocking UI.
//It’s a handy place to put the company logo and a “Reticulating splines...” loading message.
Item {
    Rectangle {
        anchors.fill: parent
        color: "#f4c842"

        Text {
            anchors.centerIn: parent
            text: "Splash View"
        }
    }
}
