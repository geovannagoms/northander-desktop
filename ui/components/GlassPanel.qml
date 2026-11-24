import QtQuick
import "../themes"

// Superfície de vidro reutilizável.
// Tudo que for colocado dentro dele aparece dentro do painel, com margem.
Item {
    id: raiz

    property real radius: Theme.radiusMd
    property color fillColor: Theme.glassFill
    property color borderColor: Theme.glassBorder
    property bool showShadow: true
    property real padding: Theme.spaceMd

    default property alias conteudo: area.data

    // Sombra suave (um retângulo escuro deslocado para baixo)
    Rectangle {
        visible: raiz.showShadow
        x: 0
        y: 6
        width: raiz.width
        height: raiz.height
        radius: raiz.radius
        color: Theme.glassShadow
        opacity: 0.6
    }

    // Corpo translúcido com borda fina
    Rectangle {
        anchors.fill: parent
        radius: raiz.radius
        color: raiz.fillColor
        border.width: 1
        border.color: raiz.borderColor
    }

    // Brilho no topo, que dá a sensação de superfície de vidro
    Rectangle {
        anchors.fill: parent
        anchors.margins: 1
        radius: raiz.radius - 1
        gradient: Gradient {
            GradientStop { position: 0.0; color: Theme.glassHighlight }
            GradientStop { position: 0.5; color: "#00FFFFFF" }
        }
    }

    // Área onde fica o conteúdo
    Item {
        id: area
        anchors.fill: parent
        anchors.margins: raiz.padding
    }
}
