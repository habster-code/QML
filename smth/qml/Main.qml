import Felgo
import QtQuick
import QtQuick.Window

App{
    Window {
        width:350
        height:700
        visible:true
        title:qsTr("Page")
        minimumHeight:700

        Rectangle {
            id:header
            width:parent.width
            height:70
            color:"lightgrey"

            Text{
                text:"Header"
                font.pixelSize: 16
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id:main
            width:parent.width - 20
            height:parent.height - 160
            anchors.centerIn: parent
            border.width:2
            border.color:"lightgrey"

            Text{
                text:"Content"
                anchors.centerIn: parent
                font.pixelSize: 16
            }
        }

        Rectangle{
            id:btn1
            width:parent.width / 3
            height:70
            color:"lightgrey"
            anchors.bottom:parent.bottom
            anchors.left:parent.left

            Text{
                text:"1"
                font.pixelSize: 16
                anchors.centerIn:parent
            }
        }

        Rectangle{
            id:btn2
            width:parent.width / 3
            height:70
            color:"lightgrey"
            anchors.bottom:parent.bottom
            anchors.left:btn1.right
            anchors.leftMargin:5

            Text{
                text:"2"
                font.pixelSize: 16
                anchors.centerIn:parent
            }
        }

        Rectangle{
            id:btn3
            width:parent.width / 3
            height:70
            color:"lightgrey"
            anchors.bottom:parent.bottom
            anchors.left:btn2.right
            anchors.leftMargin:5

            Text{
                text:"3"
                font.pixelSize: 16
                anchors.centerIn:parent
            }
        }
    }
}

