import QtQuick 2.6
import QtQuick.Controls 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2

Window{
    id:main
    width:350
    height:700
    visible:true
    title:qsTr("StackView")

    property int defMargin:10

    StackView{
        id:stack_view
        anchors.fill:parent
        initialItem: start_page
    }

    Rectangle{
        id:start_page
        width:parent.width
        height:parent.height
        Button{
            id:start
            anchors.centerIn: parent
            text:"START"
            onClicked: stack_view.push(page1)
        }
    }

    ToolBar{
        id:header
        height:40
        width:parent.width
        RowLayout{
            ToolButton{
                id:back_btn
                Text{
                    text:"<-"
                    font.pixelSize: 24
                    visible:stack_view.depth>1
                    anchors.verticalCenter: parent.verticalCenter
                }
                onClicked:stack_view.pop(ColorPage)
            }
        }
    }

    ColorPage{
        id:page1
        backgroundColor: "red"
        buttonText: "To_Yellow"
        buttonTextBack: "To_Green"
        onButtonTextClicked:stack_view.push(page2)
        onButtonTextBackClicked: stack_view.replace(page1,page3)
    }
    ColorPage{
        id:page2
        visible:false
        backgroundColor: "yellow"
        buttonText: "To_Green"
        buttonTextBack: "To_Red"
        onButtonTextClicked:stack_view.push(page3)
        onButtonTextBackClicked: stack_view.replace(page2,page1)
    }
    ColorPage{
        id:page3
        visible:false
        backgroundColor: "green"
        buttonText:"To_Red"
        buttonTextBack: "To_Yellow"
        onButtonTextClicked:stack_view.push(page1)
        onButtonTextBackClicked: stack_view.replace(page3,page2)
    }
}
