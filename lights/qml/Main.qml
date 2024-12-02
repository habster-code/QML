import Felgo
import QtQuick
import QtQuick.Controls
import QtQuick.Window

App {
    SwipeView{
        id:view
        interactive: SwipeView.ForceElasticity
        currentIndex: 0
        anchors.fill: parent

        Page{
            Rectangle{
                id:red
                anchors.fill:parent
                color:"red"
            }
        }

        Page{
            Rectangle{
                id:yellow
                anchors.fill:parent
                color:"yellow"
            }
        }

        Page{
            Rectangle{
                id:green
                anchors.fill:parent
                color:"green"
            }
        }
    }

    PageIndicator{
        id:indicator
        count:view.count
        currentIndex: view.currentIndex
        anchors.bottom:parent.bottom
        anchors.horizontalCenter:parent.horizontalCenter
    }
}
