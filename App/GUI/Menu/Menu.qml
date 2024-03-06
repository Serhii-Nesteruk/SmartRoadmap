import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: menu
    height: parent.height
    width: parent.width / 4

    color: "#3e444f"

    ListModel {
        id: listModel

        ListElement { title: "C++ Developer" }
        ListElement { title: "Android Developer" }
        ListElement { title: "Java Developer" }
        ListElement { title: "Python Developer" }
    }

    ListView {
        anchors.fill: parent
        clip: true
        orientation: Qt.Vertical
        boundsBehavior: Flickable.StopAtBounds
        model: listModel

        // Define the delegate
        delegate: ListBlock {
            title: model.title
        }
    }


}