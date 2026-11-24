import QtQuick
import QtQuick.Window
import "../themes"
import "../components"

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
        anchors.horizontalCenter: parent.horizontalCenter
        y: 90
        spacing: Theme.spaceMd

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "NORTHANDER"
            color: Theme.textAccent
            font.family: Theme.fontDisplayFamily
            font.pixelSize: Theme.fontDisplay
            font.letterSpacing: 12
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "North is Yours."
            color: Theme.textPrimary
            font.family: Theme.fontFamily
            font.pixelSize: 18
            font.italic: true
        }
    }

    // Círculo de luz atrás do painel, só para você enxergar a transparência do vidro
    Rectangle {
        width: 240
        height: 240
        radius: 120
        color: Theme.lilac
        opacity: 0.45
        x: painel.x + painel.width - 150
        y: painel.y - 90
    }

    GlassPanel {
        id: painel
        width: 440
        height: 150
        anchors.horizontalCenter: parent.horizontalCenter
        y: 340

        Column {
            anchors.centerIn: parent
            spacing: Theme.spaceSm

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Liquid Glass"
                color: Theme.textAccent
                font.family: Theme.fontDisplayFamily
                font.pixelSize: Theme.fontTitle
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Base visual do Design System"
                color: Theme.textSecondary
                font.family: Theme.fontFamily
                font.pixelSize: Theme.fontBody
            }
        }
    }
}
