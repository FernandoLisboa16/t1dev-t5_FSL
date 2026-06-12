## dartpedia

Projeto desenvolvido pela turma T1DEV-T5 como atividade prática para aplicação dos conceitos de desenvolvimento em Dart, consumo de APIs, testes automatizados e construção de aplicações de linha de comando.

Professor: Irineu Moura

Líder do Projeto: Fernando Lisboa

# Integrantes:

Fernando Lisboa
Felipe Rosa
Caroline Sagaes
Myguel Dusse
Sobre o projeto

O Dartpedia é uma aplicação de linha de comando que consome a API da Wikipédia para realizar pesquisas e consultar artigos diretamente pelo terminal.

O projeto foi desenvolvido de forma modular, separando as responsabilidades em diferentes pacotes para facilitar a organização, manutenção e reutilização do código.

# Funcionalidades
Pesquisa de artigos na Wikipédia
Exibição de links relacionados ao termo pesquisado
Consulta de artigos por título
Exibição de resumos de artigos
Comando de ajuda com informações detalhadas
Saída formatada e colorida no terminal
Registro de erros e eventos em arquivos de log
Desserialização de respostas JSON da API da Wikipédia
Testes automatizados para validação dos modelos de dados
Estrutura do projeto
t1dev-t5/
│
├── cli/
│   ├── Aplicação principal
│   ├── Comandos da linha de comando
│   └── Sistema de logs
│
├── command_runner/
│   ├── Framework de comandos
│   ├── Parser de argumentos
│   ├── Sistema de ajuda
│   └── Utilitários de console
│
├── wikipedia/
│   ├── Comunicação com a API da Wikipédia
│   ├── Modelos de dados
│   └── Testes automatizados
│
└── pubspec.yaml
# Tecnologias utilizadas
Dart
API REST da Wikipédia
HTTP
Logging
Test
Como executar

# Clone o repositório:

git clone <url-do-repositorio>

Acesse a pasta do projeto:

cd t1dev-t5

# Instale as dependências:

dart pub get

Execute a aplicação:

dart run cli/bin/cli.dart
# Exemplos de uso

# Exibir ajuda:

dart run cli/bin/cli.dart help

# Exibir ajuda detalhada:

dart run cli/bin/cli.dart help --verbose

# Pesquisar artigos:

dart run cli/bin/cli.dart search dart

Pesquisar utilizando a opção "Estou com sorte":

dart run cli/bin/cli.dart search dart --im-feeling-lucky

# Consultar um artigo específico:

dart run cli/bin/cli.dart article "Dart_(programming_language)"
# Logs

A aplicação registra erros e eventos em arquivos de log gerados automaticamente dentro do diretório:

logs/

Esses registros auxiliam na identificação e correção de possíveis problemas durante a execução da aplicação.

Considerações finais

O Dartpedia foi desenvolvido com o objetivo de praticar conceitos importantes da linguagem Dart, incluindo programação orientada a objetos, consumo de APIs, manipulação de JSON, testes automatizados, organização de projetos em múltiplos pacotes e desenvolvimento de aplicações de linha de comando.
