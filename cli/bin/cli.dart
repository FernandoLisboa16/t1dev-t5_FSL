

/*-----------------------------------------------------------------------------



Informacoes:

o aplicativo cli faz parte do projeto dartpedia

o cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart

cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.

Outras informacoes importantes sobre nosso aplicativo

site	: 

Autor	: Felipe Rosa <silvafeliperosa@gmail.com>

Manutencao	: Felipe Rosa <silvafeliperosa@gmail.com>

-------------------------------------------------------------------------------

Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:

dentro da pasta dartpedia em /home/felipe.rosa/dartpedia/cli rode o comando dart run; deve aparecer a mensagem de saudacao, "Hello,Dart"

Obs: Importante " Este aplicativo este em desenvolvimento e ao longo do tempo comportamento do aplicativo pode mudar

-------------------------------------------------------------------------------

Dicionario do versionamento:

v = versao

0 = inicio do versionamento

. = implementacao de versionamento

1 = Proxima versao, 2, proxima versao, e assim por diante

-------------------------------------------------------------------------------

Historico do versionamento:

-------------------------------------------------------------------------------

Versao: 0.0.0

Data: 10/04/2026

Descriacao do codigo: Codigo original....

Codigo

Import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) {
	Print ('Hello Word:{cli.calculate()}!');
}

Saida padrao ao executar o codigo:

Comando: dart run bin/cli.dart || dart bin/cli.dart

Saida: Hello Word: 42!

-------------------------------------------------------------------------------


versao: 0.0.1

Data: 10/04/2026

Descricao do codigo:Simplifique a saida por enquanto. Apague a primeira linha (voce nao precisa dessa declaracao de importacao) e altere a print declaracao para exibir uma saudacao simples:

import 'package:cli/cli.dart' as cli; // Delete this entire line

void main(List<String> arguments) {
  print('Hello, Dart!'); // Change this line
}

Codigo valido ate aqui

Codigo:

void main(List<String> arguments) {
	Print ('Hello, Dart!');
}

Saida Padrao ao executar o codigo

Comando: Dart run

Saida: Hello, Dart!
-------------------------------------------------------------------------------

1. Implemente o versioncomando em cli/bin/cli.dart: Adicione logica para lidar com um versioncomando que imprime a versao atual da CLI. Use um if instruÃ§Ã£o `if` para verificar se o primeiro argumento fornecido eh `true` version. Voce tambem precisara de uma version constante.

Primeiro, acima da sua main funcao, declare uma const variavel para a versao. O valor de uma const variavel nunca pode ser alterado depois de ter sido definido:

const version = '0.0.2'; // Add this line

Em seguida, modifique sua mainfuncao para verificar o versionargumento:

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}

Essa $version sintaxe eh chamada de interpolacao de strings. Ela permite incorporar o valor da variavel diretamente em uma string, prefixando o nome da variavel com um $sinal

const version = '0.0.2';
void main(List<String> arguments) {
  	if (arguments.isEmpty) {
    	print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}

Saida Padrao ao executar o codigo

Comando: dart bin/cli.dart version

Saida:Dartpedia CLI version 0.0.2

-------------------------------------------------------------------------------
*/
/*
Descricao do codigo
Adicione uma printUsage funcao: Para tornar a saida mais amigavel ao usuario, crie uma funcao separada para exibir as informacoes de uso. Coloque essa funcao fora e abaixo da sua mainfuncao principal.

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

search eh o comando que eventualmente fara a busca na Wikipedia.




const version = '0.0.3'; 
void main(List<String> arguments) {
 void printUsage(
print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
	
  if (arguments.isEmpty) {
   	print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  		}
}

Saida padrao ao executar o codigo:

Comando: dart run  | Dart run bin/cli.dart version

Saida: Hello dart | Dartpedia CLI version 0.0.3

-------------------------------------------------------------------------------
const version = '0.0.3';
void main(List<String> arguments) {
  if (arguments.isEmpty) {
  print('Hello, Dart"'); {
  } 
}else if (arguments.first == 'version') {
    print('Dartpedia CLI Version $version');
	}
}

_______________________________________________________________________________

Versao 0.0.4

Data: 10/04/2026

Descricao do codigo:

4. Implemente o help comando e refine main: Agora, integre o help comando usando uma else if instrucao e limpe o comportamento padrao para chamar a printUsage funcao.
Implemente o help comando e refine main: Agora, integre o help comando usando uma else if instrucao e limpe o comportamento padrao para chamar a printUsage funcao.
:
Modifique sua main funcao para que fique assim:

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage(); // Change this from 'Hello, Dart!'
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

5. Entenda a if/else estrutura e as variaveis: Agora que voce implementou o fluxo de controle na main funcao, revise o codigo que foi adicionado a ela.

    . arguments.isEmpty Verifica se nenhum argumento de linha de comando foi fornecido.

    . arguments.first Acessa o primeiro argumento, que voce esta usando como nosso comando.

    . version eh declarado como um const. Isso significa que seu valor eh conhecido em tempo de compilacao e voce nao pode altera-lo durante a execucao.
    
    . arguments eh uma variavel regular (nao constante) porque seu conteudo pode mudar durante a execucao com base na entrada do usuario     .
Modifique sua main funcao para que fique assim:
-------------------------------------------------------------------------------
//const version = '0.0.4';

//void main(List<String> arguments) {
  //if (arguments.isEmpty) {
//	print('Hello Dart!');
  //}else if (arguments.first == 'version') {
   // print('Dartpedia CLI version $version');
	// } else {
		// printUsage();
	// }	
      // }
	// void printUsage() {
	// printUsage() {
		// print("the following comands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
	// }
//-----------------------------------------------------------------------------
// Codigo valido ate aqui

 // Codigo:


const version = '0.0.4';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage();
  }
}

void printUsage() {
  print("the following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// Saida Padrao ao executar o codigo:

//Comando dart run | dart cli.dart version dart | cli.dart help | dart cli.dart printUsage

// Saida: Hello, Dart! | Dartpedia CLI version 0.0.4 | Hello, Dart! | the following commads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'




Tarefa 2: Implementar o comando de busca

Em seguida, implemente um comando basico search que receba o titulo de um artigo como entrada. Ao desenvolver essa funcionalidade, voce trabalhara com List manipulacao de dados, verificacao de valores nulos e interpolacao de strings.

1. Integre o search comando em main: Primeiro, modifique a mainfuncao cli/bin/cli.dart para incluir um else iframo que lide com o search comando. Por enquanto, basta imprimir uma mensagem de espaÃ§o reservado.

const version = '0.0.5';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'Search<ARTICLE-TITLE>'")  ;
}
-------------------------------------------------------------------------------

//codigo:
//17/04/2026
const version = '0.0.5'; 

void main(list<String> arguments) { 
  if (arguments.isEmpty || arguments.first == 'help') {
	printUsage();
}          else if (arguments.first == 'version') {
	print ('Dartpedia CLI version $version');
   }		else if (arguments.first == 'search') {
	print('Search command recognized!');
}	else {
	printUsage();
      }
}

-------------------------------------------------------------------------------

3. Defina a searchWikipedia funcao: O search comando eventualmente executara a logica principal do seu aplicativo chamando uma funcao chamada searchWikipedia. Por enquanto, faca com que ela searchWikipedia imprima os argumentos passados para ela com o search comando. 

Coloque esta nova funcao abaixo de main.
// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)

Principais trechos do codigo anterior:

List<String>? arguments significa que a arguments prÃ³pria lista pode ser null.

Observacao

O Dart impoe uma seguranca robusta contra valores nulos , o que significa que voce precisa declarar explicitamente quando uma variavel pode ser nula. Qualquer variavel que nao seja marcada como anulavel tem a garantia de nunca ser nula, mesmo em producao.

O objetivo da seguranca contra valores nulos nao eh impedir que voce use `null` em seu codigo, pois representar a ausencia de um valor pode ser util. Em vez disso, ela visa forcar voce a considerar a possibilidade de valores nulos e, portanto, a ser mais cuidadoso com ela. Juntamente com o analisador, isso ajuda a prevenir uma das falhas de tempo de execucao mais comuns em programacao: erros de ponteiro nulo.

--------------------------------------------------------------------------------

24/4/2026
codigo:

const version = '0.0.6';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    searchWikipedia(null);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

-------------------------------------------------------------------------------

4. Chame a searchWikipedia funcao a partir da mainfuncao: Agora, modifique o search bloco de comando main para chamar searchWikipedia e passar quaisquer argumentos que venham apos o search proprio comando. Use arguments.sublist(1) para obter todos os argumentos a partir do segundo. Se nenhum argumento for fornecido apos search, passe null para searchWikipedia.

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

Principais trechos do codigo anterior:

final As variaveis so podem ser definidas uma vez e sao usadas quando voce nao pretende altera-las novamente no codigo.
arguments.sublist(1) cria uma nova lista contendo todos os elementos da arguments lista apos o primeiro elemento (que era search).
arguments.length > 1 ? ... : null;eh um operador condicional (terinario). Ele garante que, se nenhum argumento for fornecido apos o search comando, inputArgsse torne null, correspondendo ao comportamento do codigo de exemplo para searchWikipedia o arguments parametro de List<String>?.

5. Teste searchWikipedia com argumentos: Usando a linha de comando, execute o aplicativo com um titulo de artigo de teste:

dart bin/cli.dart search Dart Programming

VocÃª deveria ver:

searchWikipedia received arguments: [Dart, Programming]

Em seguida, execute o mesmo comando sem os argumentos adicionais:

dart bin/cli.dart search

Voce deveria ver:

searchWikipedia received arguments: null
-------------------------------------------------------------------------------

//codigo

const version = '0.0.7';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}
// Saida padrao ao executar o codigo:

// Comando: dart run | dart run version | dart run help | dart run search Dart Programming | dart run search

// Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>' 
// Dartpedia CLI version 0.0.7 
// The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>' 
// searchWikipedia received arguments: [Dart, Programming] 
// searchWikipedia received arguments: null


-------------------------------------------------------------------------------

Lide com a falta do titulo do artigo e a entrada do usuario com o stdin comando: Eh mais amigavel ao usuario solicitar o titulo caso ele nao o forneca na linha de comando. Use stdin.readLineSync() para isso.

Primeiro, adicione a importacao necessaria no inicio do seu cli/bin/cli.dart arquivo:

import 'dart:io'; // Add this line at the top

dart:io Eh uma biblioteca central no SDK do Dart e fornece APIs para lidar com arquivos, diretorios, sockets, clientes e servidores HTTP, e muito mais.

Agora, atualize sua searchWikipedia funÃ§ao.

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}

O bloco de codigo anterior introduz alguns conceitos-chave:

Declara uma final String articleTitle variavel. Isso permite que a analise estatica detecte que ela articleTitle sera um valor Stringe nao sera nula.

Em seguida, uma if/else instrucao verifica se os argumentos da linha de comando para a pesquisa foram fornecidos.

Caso faltem argumentos, o programa solicita informacoes ao usuario, le a entrada usando `read` stdin.readLineSync()e lida de forma segura com os casos em que nenhuma entrada eh fornecida.

Caso existam argumentos , ele arguments.join(' ') os combina em uma unica string de busca.

Principais trechos do codigo anterior:

stdin.readLineSync() ?? ''Le a entrada do usuario. Embora stdin.readLineSync() possa retornar nulo, o operador de coalescencia nula (`\ ??n`) eh usado para fornecer uma string vazia (`\ ''n`) como alternativa caso a entrada seja nula. Esta eh uma maneira concisa de garantir que a variavel seja uma string nao nula.

arguments.join(' ') Concatena todos os elementos da arguments lista em uma unica string, usando um espaÃ§o como separador. Por exemplo, ['Dart', 'Programming'] torna-se "Dart Programming". Isso eh crucial para tratar entradas de linha de comando com varias palavras como uma unica frase de pesquisa.

A analise estÃ¡tica do Dart pode detectar que a articleTitle variavel eh garantidamente inicializada quando a instrucao `print` eh executada. Independentemente do caminho percorrido dentro do corpo desta funcao, a variavel nao pode ser nula.

-------------------------------------------------------------------------------
24/04/26

codigo 

import 'dart:io';

const version = '0.0.8';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title:');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// Saida padrao ao executar o code
// Comandos: Dart cli.dart | dart cli.dart help | dart cli.dart version | dart cli.dart search | dart search "titulo" 
// Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
//Comando: dart cli.dart help
//saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
//comando dart cli.dart search
//saida: Please provide an  article title
//comando:dart cli.dart Search "titulo"
//saida: Current article title: titulo

-------------------------------------------------------------------------------


Atualize searchWikipedia para exibir mensagens que indiquem que nosso programa encontrou algo. Isso nos ajuda a visualizar o que nosso programa final fara sem precisar compila-lo completamente agora. Voce so vera essas mensagens se incluir uma consulta de pesquisa ao executar o programa.

Por exemplo: dart bin/cli.dart search Dart Programming.

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

-------------------------------------------------------------------------------

//24/04/2026
//codigo:

import 'dart:io';

const version = '0.0.9';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// Saida padrao ao executar o code
// Comandos: Dart cli.dart | dart cli.dart help | dart cli.dart version | dart cli dart search | dart cli.dart search "titulo qualquer"
// Saida: dart cli.dart
// Comando: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>
// saida: Dart cli.dart help
// Comando: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>
// comando: Dart cli.dart version
// saida: Dartpedia CLI version 0.0.9
// comando: dart dart.cli search
// saida: Please provide an article title
// comando: dart cli.dart search "titulo qualquer"
// comando: Looking up article about "$articleTitle". please wait.
//	    Here ya go!
//	    Pretend this is an article about "articletitle
*/


/* -----------------------------------------------------------------------------

Versao: 0.0.10

Data: 01/05/2026

Descricao do codigo:

Tarefa 2: Importar o pacote http

Agora que voce adicionou o pacote, voce precisa importar para o arquivo do Dart para usar suas funcionalidades HTTP.

Abra o arquivo dartpedia/bin/cli.dart

Adicione a seguinte declaracao no topo do arquivo, junto com a importacao existente:

import 'dart:io';
import 'package:http/http.dart' as http;

Essa linha importa o pacote HTTP e da o nome de http. Depois disso, voce pode consultar classes e funcoes dentro do pacote usando http.

Tarefa 3: Implementar a funcao getWikipediaArticle

Agora crie uma nova funcao chamada getWikipediaArticle. Essa funcao sera responsavel pela busca de dados da API da Wikipedia usando requisicoes assincronas.

Codigo valido ate aqui:

import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.10';

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void main(List<String> arguments) {
  print('Wikipedia API initialized.');
}

Saida padrao ao executar o codigo:

Comando:
dart run bin/cli.dart

Saida:
Wikipedia API initialized.

----------------------------------------------------------------------------- */

/* -----------------------------------------------------------------------------

Versao: 0.0.11

Data: 02/05/2026

Descricao do codigo:

Tarefa 4: Integrar a chamada de API ao searchWikipedia

A funcao searchWikipedia agora passa a utilizar async e await para trabalhar com requisicoes assincronas.

Tambem foi implementado:
- tratamento de entrada do usuario
- verificacao de valores nulos
- integracao da funcao getWikipediaArticle

Codigo valido ate aqui:

import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.11';

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');

    final inputFromStdin = stdin.readLineSync();

    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }

    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  var articleContent = await getWikipediaArticle(articleTitle);

  print(articleContent);
}

void main(List<String> arguments) {
  searchWikipedia(arguments);
}

Saida padrao ao executar o codigo:

Comando:
dart run bin/cli.dart Dart_(programming_language)

Saida:
Looking up articles about "Dart_(programming_language)". Please wait.

{JSON da Wikipedia}

----------------------------------------------------------------------------- */

/* -----------------------------------------------------------------------------

Versao: 0.0.12

Data: 03/05/2026

Descricao do codigo:

Tarefa 5: Atualizar o main para chamar searchWikipedia

O comando principal foi atualizado para utilizar o novo comando wikipedia.

Tambem foi implementado:
- comando help
- comando version
- printUsage()
- integracao completa com searchWikipedia

Codigo valido ate aqui:

import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.12';

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');

    final inputFromStdin = stdin.readLineSync();

    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }

    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  var articleContent = await getWikipediaArticle(articleTitle);

  print(articleContent);
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'wikipedia <ARTICLE-TITLE>'"
  );
}

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;

    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

Saida padrao ao executar o codigo:

Comandos:

dart run
dart run version
dart run help
dart run wikipedia Dart_(programming_language)

Saidas:

The following commands are valid: 'help', 'version', 'wikipedia <ARTICLE-TITLE>'

Dartpedia CLI version 0.0.12

Looking up articles about "Dart_(programming_language)". Please wait.

{JSON da Wikipedia}

----------------------------------------------------------------------------- */

/* -----------------------------------------------------------------------------

Versao: 0.0.13

Data: 04/05/2026

Descricao do codigo:

Tarefa 6: Rodar o aplicativo

Agora o aplicativo consegue:
- buscar artigos reais da Wikipedia
- receber entrada do usuario
- utilizar requisicoes HTTP assincronas
- imprimir JSON bruto da API
- utilizar o comando wikipedia

Codigo valido ate aqui:

-----------------------------------------------------------------------------

import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.13';

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');

    final inputFromStdin = stdin.readLineSync();

    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }

    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  var articleContent = await getWikipediaArticle(articleTitle);

  print(articleContent);
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'wikipedia <ARTICLE-TITLE>'"
  );
}

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;

    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}
 -----------------------------------------------------------------------------

Saida padrao ao executar o codigo:

Comando:
dart run bin/cli.dart wikipedia "Dart_(programming_language)"

Saida:

Looking up articles about "Dart_(programming_language)". Please wait.

{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "Dart (programming language)"
}

Comando:
dart run bin/cli.dart wikipedia

Saida:

Please provide an article title.

Flutter_(software)

Looking up articles about "Flutter_(software)". Please wait.

{
  "type": "standard",
  "title": "Flutter (software)"
}

----------------------------------------------------------------------------- */

/* -----------------------------------------------------------------------------

Versao: 0.0.14

Data: 06/05/2026

Descricao do codigo:

Tarefa 4: Importar e usar o pacote command_runner

Agora que o pacote command_runner foi adicionado como dependencia,
ele pode ser importado no projeto para substituir a antiga logica
manual de comandos baseada em if/else.

Tambem foi implementado:
- importacao do pacote command_runner
- criacao da classe CommandRunner
- main utilizando async/await
- transferencia do controle dos argumentos para o runner
- remocao da antiga logica manual de comandos

Codigo valido ate aqui:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async {
  var runner = CommandRunner();

  await runner.run(arguments);
}

Saida padrao ao executar o codigo:

Comando:
dart run bin/cli.dart wikipedia Computer_programming

Saida:

CommandRunner received arguments:
[wikipedia, Computer_programming]

-----------------------------------------------------------------------------

Versao: 0.0.15

Data: 08/05/2026

Descricao do codigo:

Tarefa 5: Rodar a aplicacao

Agora a aplicacao utiliza oficialmente o pacote command_runner
para processar os comandos recebidos via terminal.

O controle dos argumentos foi transferido com sucesso para o runner.

Tambem foi implementado:
- tratamento centralizado dos argumentos
- execucao assincrona completa
- novo fluxo principal do CLI
- substituicao definitiva da logica antiga baseada em if/else

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async {
  var runner = CommandRunner();

  await runner.run(arguments);
}

Saida padrao ao executar o codigo:

Comando:
dart run bin/cli.dart wikipedia Computer_programming

Saida:

CommandRunner received arguments:
[wikipedia, Computer_programming]

Comando:
dart run bin/cli.dart wikipedia Dart

Saida:

CommandRunner received arguments:
[wikipedia, Dart]

------------------------------------------------------------------------------- 
Codigo valido ate aqui

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async {
  var runner = CommandRunner();

  await runner.run(arguments);
}

*/


import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  var commandRunner = CommandRunner(
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }

      if (error is Exception) {
        print(error);
      }
    }
  )..addCommand(HelpCommand());

  commandRunner.run(arguments);
}

/*
Comando: dart run bin/cli.dart
Saida: Usage: dart bin/cli.dart <command> [commandArg?] [...options?]

Comando: dart run bin/cli.dart teste
Saida: ArgumentException: The first word of input must be a command.

Comando: dart run bin/cli.dart help
Saida: Available commands: help
*/
