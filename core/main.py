"""Ponto de entrada do NOCTURNE DESKTOP."""

import sys
from pathlib import Path

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

# Pasta raiz do projeto (uma pasta acima de "core")
RAIZ = Path(__file__).resolve().parent.parent


def main():
    app = QGuiApplication(sys.argv)
    app.setApplicationName("NOCTURNE DESKTOP")

    engine = QQmlApplicationEngine()
    engine.load(str(RAIZ / "ui" / "qml" / "Main.qml"))

    if not engine.rootObjects():
        print("Erro: não foi possível carregar o arquivo QML.")
        return 1

    return app.exec()


if __name__ == "__main__":
    sys.exit(main())
