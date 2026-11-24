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

    // Tudo o que fica ATRÁS do painel de vidro precisa estar dentro deste Item
    Item {
        id: fundo
        anchors.fill: parent

        Rectangle {
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: Theme.obsidian }
                GradientStop { position: 1.0; color: Theme.midnight }
            }
        }

        // Círculo de luz lilás, parcialmente atrás do painel
        Rectangle {
            width: 240
            height: 240
            radius: 120
            color: Theme.lilac
            opacity: 0.45
            x: painel.x + painel.width - 150
            y: painel.y - 90
        }

        // Barra prateada inclinada, para ver bem a diferença entre nítido e desfocado
        Rectangle {
            width: 14
            height: 220
            color: Theme.silver
            opacity: 0.7
            rotation: 20
            x: janela.width / 2 - 120
            y: 290
        }

        // Círculo que passa de um lado para o outro atrás do painel
        Rectangle {
            id: bola
            width: 110
            height: 110
            radius: 55
            color: Theme.silver
            opacity: 0.55
            y: 360

            SequentialAnimation on x {
                loops: Animation.Infinite
                NumberAnimation { from: 200; to: 650; duration: 5000; easing.type: Easing.InOutSine }
                NumberAnimation { from: 650; to: 200; duration: 5000; easing.type: Easing.InOutSine }
            }
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

    GlassPanel {
        id: painel
        width: 440
        height: 150
        anchors.horizontalCenter: parent.horizontalCenter
        y: 340
        blurSource: fundo

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
                text: painel.blurAtivo ? "Desfoque: ligado" : "Desfoque: desligado"
                color: Theme.textSecondary
                font.family: Theme.fontFamily
                font.pixelSize: Theme.fontBody
            }
        }
    }

    // Clique no painel para ligar/desligar o desfoque
    MouseArea {
        anchors.fill: painel
        cursorShape: Qt.PointingHandCursor
        onClicked: painel.blurAtivo = !painel.blurAtivo
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        text: "Clique no painel para ligar ou desligar o desfoque"
        color: Theme.textSecondary
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSmall
    }
}
