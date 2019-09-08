import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 600
    height: 400

    header: Label {
        text: qsTr("Map")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }
}
