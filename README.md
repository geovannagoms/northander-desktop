# NOCTURNE DESKTOP

*A darker kind of desktop.*

Ambiente desktop próprio para Linux, com estética Gothic e Liquid Glass,
inspirado na usabilidade do macOS.

- Versão: 0.1.0 (em desenvolvimento)
- Sistema-alvo: Linux Mint 22.3 XFCE (X11)
- Linguagem: Python 3.12
- Interface: PySide6 / Qt 6 / QML

## Como rodar

    cd ~/nocturne-desktop
    source venv/bin/activate
    python core/main.py

## Estrutura

- core/      inicialização, configurações e comunicação interna
- shell/     componentes do desktop (dock, menu bar, etc.)
- ui/        arquivos QML, componentes, temas e recursos visuais
- services/  integração com serviços do Linux
- config/    configurações persistentes
- scripts/   instalação e inicialização
- tests/     testes automatizados

## Paleta inicial

- Obsidian     #100F14
- Midnight     #28222F
- Gothic Lilac #A98BCB
- Silver       #C8C5D0
