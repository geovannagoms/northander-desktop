pragma Singleton
import QtQuick

// Design System do NORTHANDER: tokens (valores com nome) usados por toda a interface.
// Cores no formato #AARRGGBB têm transparência: AA = opacidade (00 = invisível, FF = sólido).
QtObject {
    // --- Paleta base ---
    readonly property color obsidian: "#100F14"
    readonly property color midnight: "#28222F"
    readonly property color lilac: "#A98BCB"
    readonly property color silver: "#C8C5D0"

    // --- Cores de texto ---
    readonly property color textPrimary: silver
    readonly property color textSecondary: "#99C8C5D0"
    readonly property color textAccent: lilac

    // --- Vidro (Liquid Glass) ---
    readonly property color glassFill: "#1FC8C5D0"
    readonly property color glassBorder: "#38C8C5D0"
    readonly property color glassHighlight: "#26FFFFFF"
    readonly property color glassShadow: "#59000000"

    // --- Tipografia ---
    readonly property string fontFamily: "Noto Sans"
    readonly property string fontDisplayFamily: "Noto Serif"
    readonly property int fontSmall: 12
    readonly property int fontBody: 14
    readonly property int fontTitle: 22
    readonly property int fontDisplay: 56

    // --- Espaçamentos ---
    readonly property int spaceXs: 4
    readonly property int spaceSm: 8
    readonly property int spaceMd: 16
    readonly property int spaceLg: 24
    readonly property int spaceXl: 32

    // --- Cantos arredondados ---
    readonly property int radiusSm: 8
    readonly property int radiusMd: 14
    readonly property int radiusLg: 22

    // --- Animações (em milissegundos) ---
    readonly property int durationFast: 120
    readonly property int durationNormal: 220
    readonly property int durationSlow: 400
}
