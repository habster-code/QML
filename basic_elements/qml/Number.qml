import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Controls

Button{
    id:number
    property alias buttonNumb: number.text
    font.pixelSize: 16
    anchors.margins: defMargin
    onClicked:{
        password.field = "black"
    }
}
