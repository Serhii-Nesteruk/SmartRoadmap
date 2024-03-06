import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    id: listBlock
    height: 60
    width: parent.width

    color: "#3e444f"
    property string title

    Text {
        id: text
        text: title
        anchors.centerIn: parent
        color: "#436285"
        font.pointSize: 15
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            listBlock.color = "#4d5461"
        }
        onExited: {
            listBlock.color = "#3e444f"
        }
        onClicked: {
            listBlock.color = "#6b9db8"
            // TODO: use the navigationManger to switch a page
        }
    }
}