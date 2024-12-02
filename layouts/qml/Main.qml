import Felgo
import QtQuick
import QtQuick.Layouts

App {
    Window{
        width:350
        height:700
        visible:true
        title:qsTr("Page")
        minimumHeight:700

        ColumnLayout{
            id: clm_1
            anchors.fill:parent

            Rectangle {
                id:header
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: 70
                color:"lightgrey"

                Text{
                    text:"Header"
                    font.pixelSize: 16
                    anchors.centerIn: parent
                }
            }

            Rectangle{
                id:main
                Layout.preferredWidth:parent.width - 20
                Layout.preferredHeight:parent.height - 160
                Layout.alignment: Qt.AlignCenter
                border.width:2
                border.color:"lightgrey"

                Text{
                    text:"Content"
                    anchors.centerIn: parent
                    font.pixelSize: 16
                }
            }

            RowLayout{
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: parent.height *0.15
                Layout.alignment: Qt.AlignHCenter

                Rectangle{
                    id:btn1
                    Layout.preferredWidth: parent.width / 3
                    Layout.preferredHeight: parent.height
                    color:"lightgrey"
                    Layout.alignment: Qt.AlignBottom

                    Text{
                        text:"1"
                        font.pixelSize: 16
                        anchors.centerIn:parent
                    }
                }

                Rectangle{
                    id:btn2
                    Layout.preferredWidth: parent.width / 3
                    Layout.preferredHeight: parent.height
                    color:"lightgrey"

                    Text{
                        text:"2"
                        font.pixelSize: 16
                        anchors.centerIn:parent
                    }
                }

                Rectangle{
                    id:btn3
                    Layout.preferredWidth: parent.width / 3
                    Layout.preferredHeight: parent.height
                    color:"lightgrey"

                    Text{
                        text:"3"
                        font.pixelSize: 16
                        anchors.centerIn:parent
                    }
                }
            }
        }
    }
}
