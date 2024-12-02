import Felgo
import QtQuick
import QtQuick.Window

Window {
    width:500
    height:750
    visible:true
    title:qsTr("Figures")

    Rectangle {
        id:rect1
        color:"red"
        width:100
        height:100
        anchors.centerIn:parent
    }

    Rectangle {
        id:rect2
        color:"red"
        width:20
        height:20
        anchors:left - rect1
    }
}

