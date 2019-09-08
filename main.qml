import QtQuick 2.12
import QtQuick.Controls 2.5
import QtPositioning 5.2
import QtLocation 5.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    SwipeView {
        id: mainSwipeView
        anchors.fill: parent
        currentIndex: indicator.currentIndex

        FormMap {
            id : mapForm

            Rectangle {
                anchors.fill : parent
                color: "#0e0c0c"

                Map {
                    id: map
                    anchors.fill: parent
                    plugin: Plugin {
                          name: 'osm'
                    }

                    activeMapType: supportedMapTypes[1]
                    center: QtPositioning.coordinate(37.0, 3.0)
                    zoomLevel: 8.0
                    // initialize map
                }
            }

        }

        FormData {
            id : dataForm
            MouseArea{
                anchors.fill : parent
                onClicked: dataForm.background.color = "green"
            }
        }

        FormConfig {
            id : configForm
        }

    }//SwipeView

    PageIndicator {
        id: indicator
        //        SwipeView : mainSwipeView

        count: mainSwipeView.count
        currentIndex: mainSwipeView.currentIndex

        anchors.bottom: mainSwipeView.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    } //PageIndicator

}//ApplicationWindow
