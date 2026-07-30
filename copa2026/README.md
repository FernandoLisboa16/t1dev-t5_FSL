# BOLA PRO ALTO - Copa do Mundo 2026

Projeto desenvolvido pela turma T1DEV-T5 como atividade prática para aplicação dos conceitos da linguagem Dart, programação orientada a objetos, manipulação de arquivos, JSON, tratamento de erros e desenvolvimento de aplicações de linha de comando (CLI).

**Professor:** Irineu Moura

**Líder do Projeto:** Fernando Lisboa

## Integrantes

- Fernando Lisboa
- Felipe Rosa da Silva
- Caroline Sagaes
- Myguel Dusse

---

# Sobre o projeto

O **BOLA PRO ALTO** é uma aplicação de linha de comando (CLI) que simula a fase de grupos da Copa do Mundo de 2026.

O sistema permite registrar partidas, atualizar automaticamente as estatísticas das seleções, aplicar os critérios oficiais de desempate da FIFA e exibir a classificação de cada grupo diretamente pelo terminal.

O projeto foi desenvolvido de forma modular, separando as responsabilidades em diferentes arquivos para facilitar a organização, manutenção e reutilização do código.

---

# Funcionalidades

- Cadastro das seleções participantes.
- Organização das seleções em grupos de A até L.
- Registro de partidas pelo terminal.
- Atualização automática de:
  - Pontos
  - Gols Pró
  - Gols Sofridos
  - Saldo de Gols
  - Cartões Amarelos
  - Cartões Vermelhos
- Classificação automática das seleções.
- Aplicação dos critérios oficiais de desempate da FIFA:
  - Pontos
  - Saldo de Gols
  - Gols Pró
  - Confronto Direto
  - Fair Play
  - Ranking FIFA
- Leitura de dados através de arquivo JSON.
- Programação assíncrona utilizando Future e async/await.
- Tratamento de erros utilizando try/catch.
- Registro automático de eventos em arquivos de log.
- Testes para validação das funcionalidades do sistema.

---

# Estrutura do projeto

```text
t1dev-t5_FSL/
│
├── cli/
│ ├── Aplicação CLI
│ ├── Comandos
│ └── Sistema de logs
│
├── command_runner/
│ ├── Framework de comandos
│ ├── Parser de argumentos
│ └── Utilitários
│
├── wikipedia/
│ ├── Comunicação com API
│ ├── Modelos
│ └── Testes
│
├── copa2026/
│ ├── grupo.dart
│ ├── grupos.dart
│ ├── selecao.dart
│ ├── partida.dart
│ ├── partida_modelo.dart
│ ├── classificacao.dart
│ ├── carregador_json.dart
│ ├── dados_copa.json
│ ├── logs.dart
│ ├── bola_pro_alto.dart
│ └── Arquivos de teste
│
└── pubspec.yaml
```

---

# Tecnologias utilizadas

- Dart
- Google Cloud Shell
- Git
- GitHub
- JSON
- Programação Assíncrona
- CLI (Command Line Interface)

---

# Como executar

## Clone o repositório

```bash
git clone https://github.com/FernandoLisboa16/t1dev-t5_FSL.git
```

## Acesse a pasta do projeto

```bash
cd t1dev-t5_FSL/copa2026
```

## Execute a aplicação

```bash
dart run lib/bola_pro_alto.dart
```

---

# Exemplo de utilização

```text
===========================================
      BOLA PRO ALTO - COPA DO MUNDO 2026
===========================================

1 - Registrar resultado
2 - Ver classificacao
3 - Mostrar grupos
4 - Sair
```

Durante a execução, o usuário poderá registrar partidas, visualizar a classificação atual dos grupos e consultar as seleções participantes.

---

# Logs

A aplicação registra automaticamente eventos e possíveis erros durante a execução.

Os arquivos de log são armazenados no diretório:

```text
logs/
```

Esses registros auxiliam na depuração e manutenção do sistema.

---

# Considerações finais

O projeto **BOLA PRO ALTO** foi desenvolvido com o objetivo de consolidar os conteúdos estudados durante o semestre, aplicando conceitos de lógica de programação, orientação a objetos, coleções, manipulação de arquivos, JSON, programação assíncrona, tratamento de erros, testes automatizados, Git e desenvolvimento de aplicações de linha de comando utilizando a linguagem Dart.
