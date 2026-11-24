# NORTHANDER DESKTOP — PROJECT CONTEXT

## 1. Identificação

Nome: NORTHANDER DESKTOP  
Versão atual: 0.1.0  
Status: Desenvolvimento inicial  
Diretório principal: `~/northander-desktop`

O NORTHANDER é um projeto de desenvolvimento de um ambiente desktop próprio para Linux, com referências visuais e funcionais do macOS, estética Gothic e efeitos Liquid Glass.

O objetivo final é construir um shell independente, modular e funcional.

## 2. Ambiente técnico confirmado

| Componente | Informação |
|---|---|
| Sistema operacional | Linux Mint 22.3 |
| Ambiente gráfico | XFCE |
| Sessão gráfica | X11 |
| Arquitetura | x86_64 |
| Python | 3.12.3 |
| Framework | PySide6 |
| Interface | Qt 6 / QML |
| Ambiente virtual | `venv` |

O ambiente virtual está localizado em:

`~/northander-desktop/venv`

Para ativá-lo:

```bash
cd ~/northander-desktop
source venv/bin/activate
```

Para executar a aplicação:

```bash
python core/main.py
```

## 3. Estado real do desenvolvimento

Já implementado e testado:

- Estrutura inicial do projeto.
- Ambiente virtual Python.
- Instalação do PySide6.
- Aplicação inicial em Python.
- Carregamento de QML.
- Primeira janela funcional.
- Nome da interface alterado para NORTHANDER.

Ainda não implementado:

- Dock.
- Menu Bar.
- Control Center.
- Spotlight.
- Widgets.
- Notification Center.
- Sistema completo de temas.
- Integração com serviços do Linux.
- Sessão desktop independente.

Não assumir que funcionalidades planejadas já existem.

## 4. Arquitetura

Estrutura planejada:

```text
northander-desktop/
│
├── core/
│   ├── main.py
│   ├── config.py
│   ├── system_info.py
│   └── event_bus.py
│
├── shell/
│   ├── dock/
│   ├── menu_bar/
│   ├── control_center/
│   ├── spotlight/
│   ├── widgets/
│   └── windows/
│
├── ui/
│   ├── qml/
│   ├── components/
│   ├── themes/
│   └── assets/
│
├── services/
├── config/
├── scripts/
├── tests/
│
├── README.md
├── PROJECT_CONTEXT.md
├── requirements.txt
└── .gitignore
```

Essa é a arquitetura planejada. Não criar todas as pastas antecipadamente sem necessidade.

A estrutura deve crescer conforme as funcionalidades forem implementadas.

## 5. Responsabilidades tecnológicas

**Python**
- Inicialização.
- Lógica da aplicação.
- Integração com o sistema.
- Gerenciamento de configurações.
- Serviços internos.

**PySide6 / Qt**
- Aplicação gráfica.
- Comunicação entre Python e QML.
- Gerenciamento de janelas próprias.

**QML**
- Interfaces.
- Componentes visuais.
- Animações.
- Layouts.
- Interações.

**SQLite**
- Persistência de configurações, quando necessária.

**D-Bus**
- Comunicação com serviços do Linux.

**Bash**
- Scripts de instalação e inicialização.

## 6. Identidade visual

A interface deve combinar:

- Experiência de navegação inspirada no macOS.
- Estética Gothic sofisticada.
- Liquid Glass.
- Transparências.
- Desfoque.
- Profundidade.
- Animações suaves.

Paleta inicial:

- Obsidian: `#100F14`
- Midnight: `#28222F`
- Gothic Lilac: `#A98BCB`
- Silver: `#C8C5D0`

Evitar uma aparência gamer genérica.

O objetivo é uma interface elegante, contemporânea, escura e com personalidade própria.

## 7. Arquitetura de execução

O NORTHANDER será desenvolvido inicialmente como uma aplicação independente sobre XFCE/X11.

O gerenciador de janelas XFWM4 deve continuar funcionando durante o desenvolvimento inicial.

Não remover nem substituir o ambiente gráfico original.

A transição para uma sessão própria deverá acontecer apenas quando os componentes principais estiverem estáveis.

## 8. Diretrizes obrigatórias para IAs

Qualquer IA que colaborar com o NORTHANDER deve:

1. Ler este documento antes de propor alterações arquiteturais.
2. Verificar os arquivos existentes antes de criar novos.
3. Preservar funcionalidades já implementadas.
4. Evitar duplicação de código.
5. Separar lógica e apresentação.
6. Priorizar componentes reutilizáveis.
7. Explicar dependências e instalações.
8. Fornecer código executável.
9. Informar os caminhos exatos dos arquivos.
10. Fornecer comandos para executar e testar.
11. Documentar mudanças importantes.
12. Não executar comandos destrutivos sem aprovação.
13. Não substituir o XFCE ou XFWM4 sem autorização.
14. Não inventar funcionalidades que ainda não foram desenvolvidas.

## 9. Forma de colaboração

O usuário está desenvolvendo o projeto enquanto aprende programação.

Portanto:

- Explicar decisões técnicas de maneira clara.
- Evitar explicações excessivamente complexas.
- Não esconder conceitos importantes.
- Dividir implementações grandes em etapas.
- Entregar arquivos completos quando necessário.
- Evitar alterações em muitos arquivos simultaneamente sem justificativa.
- Explicar como testar cada implementação.

O usuário utiliza diferentes ferramentas de IA para auxiliar no desenvolvimento. É importante manter consistência entre as ferramentas.

Quando uma tarefa for iniciada, verificar o estado atual do projeto e não presumir que outra IA já implementou determinada funcionalidade.

## 10. Próxima tarefa oficial

**Desenvolver o Design System do NORTHANDER.**

Objetivos:

1. Organizar as cores em um sistema reutilizável.
2. Definir tipografia.
3. Criar componentes visuais QML.
4. Desenvolver superfícies com aparência Liquid Glass.
5. Estabelecer padrões de espaçamento, bordas e transparências.
6. Preparar a base visual para o futuro Dock e Menu Bar.

A implementação deve preservar a primeira janela funcional.

---

**NORTHANDER DESKTOP**

*Your system. Your identity. Your environment.*

## Design System v0.1

- ui/themes/Theme.qml (singleton): tokens de cores, vidro, tipografia, espaçamentos, raios e animações.
- ui/components/GlassPanel.qml: superfície de vidro (fundo translúcido, borda, brilho, sombra). Conteúdo colocado dentro dele fica numa área com margem (propriedade padding).
- Uso nos QML: import "../themes" e import "../components" (ajustar o caminho conforme a pasta).
- Ainda não implementado: desfoque real do fundo (blur), tema alternativo, mais componentes.
- Ambiente virtual real: venv (ativar com: source venv/bin/activate).

## Blur v0.1 (GlassPanel)

- GlassPanel aceita blurSource (Item com o fundo, que não pode conter o próprio painel), blurAtivo e blurAmount (0 a 1).
- Implementação: ShaderEffectSource + MultiEffect (QtQuick.Effects, requer Qt 6.5+) com máscara de cantos arredondados.
- Limite: desfoca só o conteúdo dentro da janela do NORTHANDER, não o desktop real.
- A região capturada é atualizada quando o painel muda de posição ou tamanho; se o pai do painel se mover, chamar atualizarRegiao().
