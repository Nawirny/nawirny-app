import QtQuick 2.12
import QtQuick.Controls 2.5
import QtLocation 5.10
import QtPositioning 5.10

Page {

    width: 600
    height: 400

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
