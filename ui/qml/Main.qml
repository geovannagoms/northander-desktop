import QtQuick
import QtQuick.Window
import "../themes"

Window {
    id: janela
    width: 960
    height: 600
    visible: true
    title: "NORTHANDER DESKTOP"
    color: Theme.obsidian

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: Theme.obsidian }
            GradientStop { position: 1.0; color: Theme.midnight }
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 12

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "NORTHANDER"
            color: Theme.lilac
            font.pixelSize: 56
            font.letterSpacing: 12
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "North is Yours."
            color: Theme.silver
            font.pixelSize: 18
            font.italic: true
        }
    }
}
