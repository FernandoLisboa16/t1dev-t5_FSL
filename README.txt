# Interface de Linha de Comando e Integração com API Wikipedia

Este projeto consiste numa aplicação modular desenvolvida em Dart, cobrindo o cronograma completo das lições 1 a 12. O objetivo do repositório é demonstrar a evolução cronológica no ecossistema Dart: iniciando pelos conceitos fundamentais da linguagem, passando pela criação e estruturação de utilitários de Linha de Comando (CLI), e culminando na arquitetura de subcomandos assíncronos que consomem dados em tempo real da API pública da Wikipedia.

## O que o projeto faz

O sistema unifica o progresso de aprendizagem e atua como um assistente de terminal que permite ao utilizador:
1. Validar a sintaxe básica, manipulação de variáveis, coleções e lógica de controlo em Dart.
2. Configurar parâmetros globais de execução de terminal (como modos de depuração e verbosidade).
3. Executar comandos estruturados de gestão de utilizadores através de subcomandos acoplados.
4. Realizar pesquisas diretas na Wikipedia através do terminal, obtendo e exibindo o resumo formatado dos artigos consultados em tempo real.

## Como o projeto funciona

A aplicação está dividida em três componentes autónomos (pastas) que demonstram o amadurecimento técnico do código:

 Fundamentos e Camada Base (`cli/` - Lições 1 a 7):  Lições 1 a 4:* Estabelecem a base da linguagem, abordando tipagem, funções, estruturas de repetição e manipulação de coleções nativas.

   Lições 5 a 7: Utilizam a biblioteca `dart:io` para gerir o fluxo de entrada e saída padrão (`stdin` e `stdout`). O parsing dos argumentos iniciais é delegado ao pacote `args`, que valida as opções e sinalizações (*flags*) inseridas no terminal.

 Motor de Comandos (`command_runner/` - Lições 8 e 9): Centraliza a execução através do pacote `args/command_runner`. Esta arquitetura mapeia os argumentos introduzidos e os direciona para classes isoladas que estendem a classe `Command`, permitindo uma estrutura de comandos aninhados (ex: `modulo comando subcomando --opção`).

 Núcleo de Integração e Avançado (`wikipedia/` - Lições 10 a 12): * *Lições 10 e 11:* Executam requisições HTTP assíncronas utilizando o pacote `http`. Ao receber a resposta em formato JSON da API da Wikipedia, o sistema realiza a deserialização dos dados para estruturas do tipo `Map` e popula classes de modelo tipadas.

   Lição 12:* Introduz o tratamento avançado de exceções robustas, gestão de erros de rede, testes unitários básicos e finalização do ciclo de vida da aplicação CLI.

-------------------------------------------------------------------------------

## Comandos de Instalação e Execução

### Pré-requisitos

 Dart SDK instalado (versão 3.0 ou superior recomendada).

 Ligação à internet ativa (necessária para o módulo Wikipedia).

### 1. Resolução de Dependências

Antes de executar os módulos, é necessário obter os pacotes necessários em cada diretório. Execute os seguintes comandos a partir da raiz do projeto:

```bash

cd cli && dart pub get

cd ../command_runner && dart pub get

cd ../wikipedia && dart pub get

-------------------------------------------------------------------------------

## Membros do grupo:

Lider: Fernando da Silva Lisboa

Liderados: Myguel Dusse

Liderados: Felipe Rosa

Liderados: Caroline Sagaes
