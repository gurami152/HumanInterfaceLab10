import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4


Window {
    visible: true
    width: 800
    height: 800

        Rectangle{
            id: rect
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#880000"
            Drag.active: mouseArea.drag.active
            MouseArea {
                            id: mouseArea
                            anchors.fill: parent
                            drag.target: parent
                            drag.minimumX: 0
                            drag.minimumY: 0
                            drag.maximumX: parent.width+200
                            drag.maximumY: parent.height+200
                            onPressed: {
                               rect.border.color = "BLACK"
                               rect.border.width = 5
                            }
                            onReleased: {
                                rect.border.color = "BLACK"
                                rect.border.width = 0
                            }


                        }
            Text{
                text:qsTr("6.1217-1")
                font.pointSize:24
                color:"white"
                anchors.centerIn:parent
            }
        }
        Rectangle{
                        id: rect2
            x:0
            y:parent.height - parent.height * 0.4 -100
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#00FF00"
            Drag.active: mouseArea2.drag.active
            MouseArea {
                            id: mouseArea2
                            anchors.fill: parent
                            drag.target: parent
                            drag.minimumX: 0
                            drag.minimumY: 0
                            drag.maximumX: parent.width+200
                            drag.maximumY: parent.height+200
                            onPressed: {
                               rect2.border.color = "BLACK"
                               rect2.border.width = 5
                            }
                            onReleased: {
                                rect2.border.color = "BLACK"
                                rect2.border.width = 0
                            }


                        }
            Text{
                text:qsTr("color: \"#FF0000\"")
                anchors.centerIn:parent
            }
        }
        Rectangle{
                        id: rect3
            x:parent.width - parent.width * 0.4
            y:0
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#FF0000"
            Drag.active: mouseArea3.drag.active
            MouseArea {
                            id: mouseArea3
                            anchors.fill: parent
                            drag.target: parent
                            drag.minimumX: 0
                            drag.minimumY: 0
                            drag.maximumX: parent.width+200
                            drag.maximumY: parent.height+200
                            onPressed: {
                               rect3.border.color = "BLACK"
                               rect3.border.width = 5
                            }
                            onReleased: {
                                rect3.border.color = "BLACK"
                                rect3.border.width = 0
                            }


                        }
            Text{
                text:qsTr("<a href='http://www.qt.io/'>http://www.qt.io/</a>")
                anchors.centerIn:parent
            }
        }
        Rectangle{
                        id: rect4
            x:parent.width - parent.width * 0.4
            y:parent.height - parent.height * 0.4 -100
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"#00B800"
            Drag.active: mouseArea4.drag.active
            MouseArea {
                            id: mouseArea4
                            anchors.fill: parent
                            drag.target: parent
                            drag.minimumX: 0
                            drag.minimumY: 0
                            drag.maximumX: parent.width+200
                            drag.maximumY: parent.height+200
                            onPressed: {
                               rect4.border.color = "BLACK"
                               rect4.border.width = 5
                            }
                            onReleased: {
                                rect4.border.color = "BLACK"
                                rect4.border.width = 0
                            }


                        }
            Text{
                width: parent.width
                font.italic: true
                text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in vestibulum erat, eu blandit urna."
                color:"white"
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                anchors.centerIn:parent
            }
        }
        Rectangle{
            id: centerBlock
            x:parent.width/2 - (parent.width * 0.4)/2
            y:parent.height/2 - (parent.height * 0.4)/2
            width:parent.width * 0.4
            height: parent.height*0.4
            color:"royalblue"
            radius: 25
            rotation: -45
            Drag.active: mouseArea6.drag.active
            MouseArea {
                            id: mouseArea6
                            anchors.fill: parent
                            drag.target: parent
                            drag.minimumX: 0
                            drag.minimumY: 0
                            drag.maximumX: parent.width+200
                            drag.maximumY: parent.height+200
                            onPressed: {
                               centerBlock.border.color = "BLACK"
                               centerBlock.border.width = 5
                            }
                            onReleased: {
                                centerBlock.border.color = "BLACK"
                                centerBlock.border.width = 0
                            }


                        }
            Text{
                width: parent.width
                text:qsTr("Дребезов Денис Олегович")
                font.bold: true
                font.pointSize:24
                wrapMode: Text.WordWrap
                anchors.centerIn:parent
                horizontalAlignment: Text.AlignHCenter
            }
        }







    Button {
        height : 80
        width: 80
        x: 0
        y: parent.height - 90
            text: "Exit"
            onClicked: Qt.quit()
        }

        Rectangle{
            x: 90
            y: parent.height - 90
            height : 15
            width: 15
            color:"red"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                     if(mouse.button & Qt.RightButton) {
                         centerBlock.color = "darkviolet"
                     }
                     else {
                         centerBlock.color = "red"
                     }
                 }
            }
        }

        Rectangle{
            x: 140
            y: parent.height - 90
            height : 15
            width: 15
            color:"orange"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                     if(mouse.button & Qt.RightButton) {
                         centerBlock.color = "red"
                     }
                     else {
                         centerBlock.color = "orange"
                     }
                 }
            }
        }

        Rectangle{
            x: 190
            y: parent.height - 90
            height : 15
            width: 15
            color:"yellow"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "orange"
                        }
                        else {
                            centerBlock.color = "yellow"
                        }
                    }
            }
        }

        Rectangle{
            x: 240
            y: parent.height - 90
            height : 15
            width: 15
            color:"green"

            MouseArea {
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "yellow"
                        }
                        else {
                            centerBlock.color = "green"
                        }
                    }
                anchors.fill: parent
            }
        }

        Rectangle{
            x: 290
            y: parent.height - 90
            height : 15
            width: 15
            color:"skyblue"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "green"
                        }
                        else {
                            centerBlock.color = "skyblue"
                        }
                    }
            }
        }

        Rectangle{
            x: 340
            y: parent.height - 90
            height : 15
            width: 15
            color:"blue"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "skyblue"
                        }
                        else {
                            centerBlock.color = "blue"
                        }
                    }
            }
        }

        Rectangle{
            x: 390
            y: parent.height - 90
            height : 15
            width: 15
            color:"darkviolet"

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                   onClicked: {
                        if(mouse.button & Qt.RightButton) {
                            centerBlock.color = "blue"
                        }
                        else {
                            centerBlock.color = "darkviolet"
                        }
                    }
            }
        }
}
