import QtQuick
import Felgo
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts

Page{
    id:pages
    property alias backgroundColor:back_col.color
    property alias buttonText: btn_text.text
    property alias buttonTextBack:btn_textBack.text
    signal buttonTextClicked();
    signal buttonTextBackClicked();

    Rectangle{
        id:back_col
        width: parent.width
        height:parent.height
    }

    Button{
        id:btn_text
        anchors.right:parent.right
        anchors.bottom:parent.bottom
        anchors.margins:defMargin
        onClicked:{
            pages.buttonTextClicked()
        }
    }
    Button{
        id:btn_textBack
        anchors.left:parent.left
        anchors.bottom:parent.bottom
        anchors.margins:defMargin
        onClicked:{
            pages.buttonTextBackClicked()
        }
    }
}
