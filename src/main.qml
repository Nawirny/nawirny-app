import QtQuick 2.12
import QtQuick.Controls 2.5
import QtPositioning 5.2
import QtQuick.Layouts 1.12

import "ui"

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Nawirny Application")


    header: ToolBar {

        RowLayout {
            anchors.fill: parent

            Label {
                text: qsTr("What's profitable here?")
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignLeft
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            RoundButton {
                //                text: qsTr("Save to HTML")
                id : configButton
                background: Rectangle {
                    radius: configButton.radius
                    color: "white"
                }
                icon.source: "qrc:/ressources/icons/config.png"
                icon.color: "transparent"
                icon.height: parent.height
                icon.width: 20
                onClicked: console.log("Button pressd")

            } // RoundButton

        } //RowLayout

    } // ToolBar

    StackLayout {

        id: mainStackLayout
        currentIndex: mainTabBar.currentIndex
        anchors.fill: parent

        FormMap {
            id : mapForm

        } // FormMap

        FormData {
            id : dataForm
            MouseArea{
                anchors.fill : parent
                onClicked: dataForm.background.color = "green"
            }
        } // FormData


    }//SwipeView


    footer: TabBar {
        id: mainTabBar
        width: parent.width
        TabButton {
            //: Link to MAP form
            text: qsTr("Location")
        }
        TabButton {
            //: Link to Intelligence/Data form
            text: qsTr("Intelligence")
        }

    }

}//ApplicationWindow
