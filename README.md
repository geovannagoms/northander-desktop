# NORTHANDER DESKTOP

### Your system. Your identity. Your environment.

**Versão:** 0.1.0  
**Status:** Em desenvolvimento  
**Sistema-alvo:** Linux Mint 22.3 XFCE  
**Arquitetura:** x86_64  
**Linguagem principal:** Python 3.12  
**Framework:** PySide6 / Qt 6 / QML

---

## Sobre o projeto

NORTHANDER DESKTOP é um projeto independente de desenvolvimento de um ambiente desktop personalizado para Linux.

A proposta é construir um shell próprio, inspirado na experiência visual e funcional do macOS, combinado com uma identidade estética Gothic e Liquid Glass.

Mais do que personalizar um ambiente existente, o objetivo é desenvolver uma experiência desktop própria, modular, funcional e expansível.

O projeto pretende reunir interface gráfica, animações, gerenciamento de janelas, widgets, controles do sistema e integração com os recursos nativos do Linux.

**Conceito:** uma experiência sofisticada, intuitiva e visualmente singular, sem abandonar a liberdade e a flexibilidade do Linux.

## Identidade visual

A direção artística combina três referências:

**macOS**
- Dock flutuante.
- Menu Bar superior.
- Central de controle.
- Busca universal.
- Animações e transições.

**Gothic**
- Atmosfera escura.
- Tipografia elegante.
- Contrastes sofisticados.
- Detalhes em lilás, violeta e prata.

**Liquid Glass**
- Superfícies translúcidas.
- Desfoque de fundo.
- Camadas de profundidade.
- Reflexos e iluminação.
- Bordas sutis.

### Paleta inicial

| Nome | Cor |
|---|---|
| Obsidian | #100F14 |
| Midnight | #28222F |
| Gothic Lilac | #A98BCB |
| Silver | #C8C5D0 |

A identidade visual poderá evoluir durante o desenvolvimento.

---

## Ambiente de desenvolvimento

| Item | Configuração |
|---|---|
| Distribuição | Linux Mint 22.3 |
| Ambiente gráfico | XFCE |
| Servidor gráfico | X11 |
| Arquitetura | x86_64 |
| Python | 3.12.3 |
| Interface | PySide6 / Qt 6 |
| Linguagem visual | QML |
| Ambiente virtual | `.venv` |

### Tecnologias

- Python: lógica e integração com o sistema.
- PySide6: aplicação e integração com Qt.
- QML: interface, componentes e animações.
- SQLite: persistência de configurações.
- D-Bus: comunicação com serviços Linux.
- Bash: automação.
- Git: versionamento.

## Arquitetura

O projeto será modular, separando a lógica da aplicação, a interface gráfica e os serviços do sistema.

Estrutura planejada:

```text
northander-desktop/
│
├── .venv/
├── core/
├── shell/
├── ui/
│   ├── qml/
│   ├── components/
│   ├── themes/
│   └── assets/
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

A estrutura será ampliada conforme cada funcionalidade for desenvolvida.

### Componentes planejados

**01. Dock**
- Aplicativos favoritos.
- Aplicativos em execução.
- Indicadores de execução.
- Animações.
- Ampliação de ícones.
- Lixeira.

**02. Menu Bar**
- Relógio e calendário.
- Wi-Fi e Bluetooth.
- Bateria.
- Volume.
- Indicadores do sistema.

**03. Control Center**
- Controles rápidos.
- Volume e brilho.
- Conectividade.
- Configurações do sistema.

**04. Spotlight**
- Busca de aplicativos.
- Busca de arquivos.
- Comandos.
- Atalhos.

**05. Widgets**
- Relógio.
- Calendário.
- Player de música.
- Monitoramento do sistema.
- Atalhos personalizados.

**06. Window Management**
- Organização de janelas.
- Alternância entre aplicativos.
- Atalhos.
- Integração com o gerenciador de janelas Linux.

**07. Notification Center**
- Notificações.
- Histórico.
- Agrupamento.

**08. Settings**
- Temas.
- Personalização do Dock.
- Configurações da Menu Bar.
- Widgets.
- Atalhos.
- Preferências do ambiente.

---

## Roadmap

### Fase 1: Fundação
- [x] Preparar Python 3.12.
- [x] Criar ambiente virtual.
- [x] Instalar PySide6.
- [x] Criar estrutura inicial.
- [x] Identificar ambiente gráfico.
- [x] Criar primeira aplicação Qt/QML.
- [x] Executar primeira janela.
- [ ] Organizar documentação.
- [ ] Preparar sistema inicial de temas.

### Fase 2: Design System
- [ ] Definir paleta definitiva.
- [ ] Definir tipografia.
- [ ] Criar componentes reutilizáveis.
- [ ] Desenvolver superfícies translúcidas.
- [ ] Implementar efeitos de desfoque.
- [ ] Criar animações.

### Fase 3: Interface principal
- [ ] Dock.
- [ ] Menu Bar.
- [ ] Control Center.

### Fase 4: Funcionalidades
- [ ] Spotlight.
- [ ] Widgets.
- [ ] Notification Center.
- [ ] Integração com áudio, rede e bateria.

### Fase 5: Integração
- [ ] Integração com XFCE.
- [ ] Inicialização automática.
- [ ] Configurações persistentes.
- [ ] Gerenciamento de janelas.

### Fase 6: Shell independente
- [ ] Criar sessão NORTHANDER.
- [ ] Integrar componentes.
- [ ] Desenvolver inicialização independente.
- [ ] Criar instalador e recuperação.

### Fase 7: Estabilização
- [ ] Testes.
- [ ] Otimização.
- [ ] Documentação.
- [ ] Primeira versão estável.

---

## Estado atual

O NORTHANDER está na fase inicial de desenvolvimento.

Já foram concluídos:

- Preparação do ambiente Linux.
- Instalação do Python e PySide6.
- Criação do ambiente virtual no diretório definitivo.
- Estrutura inicial de diretórios.
- Primeira aplicação com Qt/QML.
- Primeira janela gráfica funcional.
- Definição inicial da identidade visual.

**Próximo objetivo:** desenvolver o Design System e estabelecer os componentes visuais que serão utilizados em todo o ambiente.

## Diretrizes

- Preservar a arquitetura modular.
- Priorizar componentes reutilizáveis.
- Separar lógica e interface.
- Evitar dependências desnecessárias.
- Testar cada funcionalidade.
- Documentar alterações.
- Preservar o ambiente XFCE durante o desenvolvimento.
- Não modificar componentes críticos do sistema sem autorização.

---

**NORTHANDER DESKTOP**

*Your system. Your identity. Your environment.*
