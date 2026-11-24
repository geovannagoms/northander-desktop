import QtQuick
import QtQuick.Effects
import "../themes"

// Superfície de vidro reutilizável.
// Para ter desfoque, passe em blurSource o Item que contém o fundo
// (esse Item NÃO pode conter o próprio painel).
Item {
    id: raiz

    property real radius: Theme.radiusMd
    property color fillColor: Theme.glassFill
    property color borderColor: Theme.glassBorder
    property bool showShadow: true
    property real padding: Theme.spaceMd

    // --- Desfoque ---
    property Item blurSource: null
    property bool blurAtivo: true
    property real blurAmount: 1.0   // de 0 a 1

    default property alias conteudo: area.data

    // Região do fundo que fica atrás do painel (em coordenadas do blurSource)
    property rect regiao: Qt.rect(0, 0, 0, 0)

    function atualizarRegiao() {
        if (!raiz.blurSource) {
            return
        }
        var p = raiz.mapToItem(raiz.blurSource, 0, 0)
        raiz.regiao = Qt.rect(p.x, p.y, raiz.width, raiz.height)
    }

    Component.onCompleted: atualizarRegiao()
    onXChanged: atualizarRegiao()
    onYChanged: atualizarRegiao()
    onWidthChanged: atualizarRegiao()
    onHeightChanged: atualizarRegiao()
    onBlurSourceChanged: atualizarRegiao()

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

    // "Foto ao vivo" da parte do fundo que está atrás do painel
    ShaderEffectSource {
        id: captura
        visible: false
        sourceItem: raiz.blurSource
        sourceRect: raiz.regiao
        live: true
    }

    // Máscara com os cantos arredondados (recorta o desfoque)
    Item {
        id: mascara
        anchors.fill: parent
        visible: false
        layer.enabled: true

        Rectangle {
            anchors.fill: parent
            radius: raiz.radius
            color: "black"
        }
    }

    // Fundo desfocado
    MultiEffect {
        anchors.fill: parent
        visible: raiz.blurAtivo && raiz.blurSource !== null
        source: captura
        autoPaddingEnabled: false
        blurEnabled: true
        blurMax: 48
        blur: raiz.blurAmount
        maskEnabled: true
        maskSource: mascara
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
