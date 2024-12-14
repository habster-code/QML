import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Window{
    width:350
    height:700
    visible:true

    property int defMargin:5

    /*TextField{
        id: userName
        placeholderText: "Username"
        height:40
        font.pixelSize: 16
        anchors.centerIn:parent
    }

    TextField{
        id:password
        placeholderText: "Password"
        height:40
        font.pixelSize: 16
        echoMode: TextInput.Password
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:userName.bottom
        anchors.margins: defMargin
    }

    Button{
        id:login
        text:"Login"
        font.pixelSize: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:password.bottom
        anchors.margins: defMargin
        onClicked:{
            userName.clear()
            password.clear()
            userName.visible = false
            password.visible = false
            clear.visible = false
            login.visible = false
            back.visible = true
        }
    }

    Button{
        id:clear
        text:"Clear"
        font.pixelSize: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:login.bottom
        anchors.margins:defMargin
        onClicked:{
            userName.clear()
            password.clear()
        }
    }

    Button{
        id:back
        text:"Back"
        font.pixelSize: 16
        visible:false
        onClicked:{
            userName.visible = true
            password.visible = true
            clear.visible = true
            login.visible = true
            back.visible = false
        }
    }*/

    Rectangle{
        width:200
        height:50
        anchors.horizontalCenter: password.horizontalCenter
        anchors.bottom:password.top
        Text{
            text:"Enter your password:"
            anchors.centerIn: parent
            font.pixelSize: 16
        }
    }

    Text{
        id:passwordField
        text:passwordField.text
        visible:false
    }

    Rectangle{
        id:password
        color:"white"
        width:parent.width
        height:50
        anchors.bottom:two.top
        anchors.margins: defMargin + 40

        Row{
            spacing: 6
            anchors.centerIn: parent
            Repeater{
                model:6
                Label{
                    width:20
                    height:20
                    font.pixelSize: 36
                    text:"*"
                    color:index < passwordField.text.length ? "black" : "lightgrey"
                }
            }
        }
    }

    Number{
        id:one
        buttonNumb: "1"
        anchors.verticalCenter: two.verticalCenter
        anchors.right:two.left
        onClicked:{
            passwordField.text += "1"
        }
    }
    Number{
        id:two
        buttonNumb: "2"
        anchors.horizontalCenter: five.horizontalCenter
        anchors.bottom:five.top
        onClicked:{
            passwordField.text += "2"
        }
    }
    Number{
        id:three
        buttonNumb: "3"
        anchors.verticalCenter: two.verticalCenter
        anchors.left:two.right
        onClicked:{
            passwordField.text += "3"
        }
    }
    Number{
        id:four
        buttonNumb: "4"
        anchors.right:five.left
        anchors.verticalCenter: five.verticalCenter
        onClicked:{
            passwordField.text += "4"
        }

    }
    Number{
        id:five
        buttonNumb: "5"
        anchors.centerIn: parent
        onClicked:{
            passwordField.text += "5"
        }
    }
    Number{
        id:six
        buttonNumb: "6"
        anchors.left:five.right
        anchors.verticalCenter: five.verticalCenter
        onClicked:{
            passwordField.text += "6"
        }
    }
    Number{
        id:seven
        buttonNumb: "7"
        anchors.verticalCenter: eight.verticalCenter
        anchors.right:eight.left
        onClicked:{
            passwordField.text += "7"
        }
    }
    Number{
        id:eight
        buttonNumb: "8"
        anchors.horizontalCenter: five.horizontalCenter
        anchors.top:five.bottom
        onClicked:{
            passwordField.text += "8"
        }
    }
    Number{
        id:nine
        buttonNumb: "9"
        anchors.verticalCenter: eight.verticalCenter
        anchors.left:eight.right
        onClicked:{
            passwordField.text += "9"
        }
    }
    Number{
        id:empty
        buttonNumb: ""
        anchors.verticalCenter: zero.verticalCenter
        anchors.right:zero.left
        enabled: false
    }
    Number{
        id:zero
        buttonNumb: "0"
        anchors.horizontalCenter:eight.horizontalCenter
        anchors.top:eight.bottom
        onClicked:{
            passwordField.text += "0"
        }
    }
    Number{
        id:clear
        buttonNumb: "Clear"
        anchors.verticalCenter: zero.verticalCenter
        anchors.left:zero.right
        onClicked:{
            passwordField.text = ""
        }
    }

}
