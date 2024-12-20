import QtQuick 2.0
import Felgo 3.0
import QtQuick.Controls 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2

Item{
    id:root
    property alias petal_lenght: first_petal.my_heigth
    property alias petal_color: first_petal.my_color
    anchors.fill: parent
    anchors.centerIn: parent
    Petal{
        id: first_petal
        my_width: center.width
        rotation: 0
        anchors.centerIn: center
        radius: width
    }
    Petal{
        id: sec_petal
        my_width: center.width
        my_heigth: first_petal.height
        rotation: 45
        anchors.centerIn: center
        color: first_petal.color
        radius: width
    }
    Petal{
        id: third_petal
        my_width: center.width
        my_heigth: first_petal.height
        rotation: 90
        anchors.centerIn: center
        color: first_petal.color
        radius: width
    }
    Petal{
        id: fourth_petal
        my_width: center.width
        my_heigth: first_petal.height
        rotation: 135
        anchors.centerIn: center
        color: first_petal.color
        radius: width
    }
    Rectangle{
        id: center
        width: parent.width * 0.25
        height: parent.width * 0.25
        color: "yellow"
        radius: parent.width * 0.25
        anchors.centerIn: parent
    }


}
