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
                    id:headerText
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
                    id:mainText
                    text:"Content"
                    anchors.centerIn: parent
                    font.pixelSize: 16
                }
            }

            RowLayout{
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: parent.height * 0.1
                Layout.alignment: Qt.AlignCenter

                Rectangle{
                    id:btn1
                    Layout.preferredWidth: parent.width / 3
                    Layout.preferredHeight: parent.height
                    color:"lightgrey"

                    Text{
                        id:btnText1
                        text:"1"
                        font.pixelSize: 16
                        anchors.centerIn:parent
                    }

                    MouseArea{
                        anchors.fill:parent
                        hoverEnabled: true
                        onClicked:{
                            btn1.color="grey"
                            btn2.color="ghostwhite"
                            btnText2.color="lightgrey"
                            btn3.color="ghostwhite"
                            btnText3.color="lightgrey"
                            headerText.text = "The first page header"
                            mainText.text = "The first main page"
                        }
                        onEntered: {
                            btn1.color="darkgrey"
                            btnText1.color="black"
                            btn2.color="ghostwhite"
                            btnText2.color="lightgrey"
                            btn3.color="ghostwhite"
                            btnText3.color="lightgrey"
                        }
                        onExited: parent.color="lightgrey"
                    }
                }

                Rectangle{
                    id:btn2
                    Layout.preferredWidth: parent.width / 3
                    Layout.preferredHeight: parent.height
                    color:"lightgrey"

                    Text{
                        id:btnText2
                        text:"2"
                        font.pixelSize: 16
                        anchors.centerIn:parent
                    }

                    MouseArea{
                        anchors.fill:parent
                        hoverEnabled: true
                        onClicked:{
                            btn1.color="ghostwhite"
                            btnText1.color="lightgrey"
                            btn2.color="grey"
                            btn3.color="ghostwhite"
                            btnText3.color="lightgrey"
                            headerText.text = "The second page header"
                            mainText.text = "The second main page"
                        }
                        onEntered: {
                            btn2.color="darkgrey"
                            btnText2.color="black"
                            btn1.color="ghostwhite"
                            btnText1.color="lightgrey"
                            btn3.color="ghostwhite"
                            btnText3.color="lightgrey"
                        }
                        onExited: parent.color="lightgrey"
                    }
                }

                Rectangle{
                    id:btn3
                    Layout.preferredWidth: parent.width / 3
                    Layout.preferredHeight: parent.height
                    color:"lightgrey"

                    Text{
                        id:btnText3
                        text:"3"
                        font.pixelSize: 16
                        anchors.centerIn:parent
                    }

                    MouseArea{
                        anchors.fill:parent
                        hoverEnabled: true
                        onClicked:{
                            btn1.color="ghostwhite"
                            btnText1.color="lightgrey"
                            btn2.color="ghostwhite"
                            btnText2.color="lightgrey"
                            btn3.color="grey"
                            headerText.text = "The third page header"
                            mainText.text = "The third main page"
                        }
                        onEntered: {
                            btn3.color="darkgrey"
                            btnText3.color="black"
                            btn1.color="ghostwhite"
                            btnText1.color="lightgrey"
                            btn2.color="ghostwhite"
                            btnText2.color="lightgrey"
                        }
                        onExited: parent.color="lightgrey"
                    }
                }
            }
        }
    }
}
