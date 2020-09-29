import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Client Management")

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
            Button {
                text: "Dashboard"
                onClicked: masterController.ui_navigationController.goDashboardView()
            }
            Button {
                text: "New Client"
                onClicked: masterController.ui_navigationController.goCreateClientView()
            }
            Button {
                text: "Find Client"
                onClicked: masterController.ui_navigationController.goFindClientView()
            }
        }
    }

    Connections {
        target: masterController.ui_navigationController
        onGoCreateClientView: contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView:contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoEditClientView:contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient: client})
        onGoFindClientView:contentFrame.replace("qrc:/views/FindClientView.qml")
    }

    //Stach view allow us to navigate between views via arrows back and force
    StackView {
        id: contentFrame
        clip: true

        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: navigationBar.right
        }

        initialItem: "qrc:/views/SplashView.qml"
    }

    //Load Dashboard when MainView will finish it's initialization
    Component.onCompleted: contentFrame.replace("qrc:/views/DashboardView.qml")
}
