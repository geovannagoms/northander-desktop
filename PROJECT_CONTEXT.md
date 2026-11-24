# PROJECT_CONTEXT — NOCTURNE DESKTOP

Documento de contexto para qualquer ferramenta de IA que colaborar no projeto.
Leia antes de modificar qualquer arquivo.

## Visão

Criar um ambiente desktop Linux próprio, elegante e funcional, com identidade
Gothic + Liquid Glass. Não copiar o macOS: usar sua usabilidade como referência.

## Decisões arquiteturais

- Shell independente sobre XFCE/X11; o XFWM4 é preservado nas primeiras etapas.
- Python para lógica e integração com o sistema.
- QML para interface e animações.
- Não misturar lógica de negócio com apresentação visual.
- Arquitetura modular, sem arquivos excessivamente grandes.
- Evitar dependências desnecessárias; usar ambiente virtual (venv).

## Regras de segurança

- Não remover o XFCE nem trocar o gerenciador de janelas prematuramente.
- Não executar comandos destrutivos ou com sudo sem justificativa e aprovação.
- Testar cada componente isoladamente antes de integrar.
- Uma falha do NOCTURNE não pode comprometer o uso normal do notebook.

## Diretrizes para IAs

- Verificar os arquivos existentes antes de modificar algo.
- Não recriar o que já existe nem presumir que algo está pronto só porque está no roadmap.
- Explicar mudanças importantes, informar dependências e dar comandos de execução e teste.
- Entregar código executável, não pseudocódigo.
- Quem desenvolve o projeto é iniciante: explicar de forma clara, sem esconder decisões.
- Desenvolver de forma incremental: cada etapa funciona antes da próxima.

## Estado atual (Fase 1 — Fundação)

- [x] Python 3.12, venv, PySide6 e estrutura de pastas.
- [x] core/main.py carregando QML.
- [x] Primeira janela (ui/qml/Main.qml) com tema inicial (ui/themes/Theme.qml).
- [ ] Sistema de temas mais completo e estrutura de componentes visuais.

## Próximo passo

Criar a base de componentes reutilizáveis e iniciar a Fase 2 (Design System).
