/*-----------------------------------------------------------------------------

Informacoes:

O aplicativo cli faz parte do projeto Dartpedia.

O cli eh nosso primeiro aplicativo que esta sendodesenvolvido em Dart.

cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.

Outras informacoes importantes sobre o cli; nosso aplicativo.

site		:
Autor		: Fernando da Silva Lisboa <fernandodasilvalisboa2@gmail.com>
Manutencao	:

-------------------------------------------------------------------------------

Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:

Dentro da pasta dartpedia em /home/fernando.lisboa/dartpedia/cli rode o comando
dart run; deve aparecer a mensagem de saudacao, "Hello, Dart!"

Obs. Importante ! Este aplicativo esta em desenvolvimento e ao longo do tempo o
comportamneto do aplicativo pode mudar.

-------------------------------------------------------------------------------

Dicionario do Versionamento:

v = versao

0 = Inicio do versionamento
. = implementacao de versionamneto
1 = Proxima versao, 2, proxima versao, e assim por diante.

-------------------------------------------------------------------------------

Historico do Versionamento:

-------------------------------Descricao do codigo: Entenda a if/else estrutura e as variaveis: Agora que voce
 implementou o fluxo de controle na main funcao, revise o codigo que foi adicio
nado a ela.

    . arguments.isEmpty Verifica se nenhum argumento de linha de comando foi fo
rnecido.

    . arguments.first Acessa o primeiro argumento, que voce esta usando como no
sso comando.

    . version eh declarado como um const. Isso significa que seu valor eh conhecido em tempo de compilacao e voce nao pode altera-lo durante a execucao.
    
    . arguments eh uma variavel regular (nao constante) porque seu conteudo pode mudar durante a execucao com base na entrada do usuario     .
------------------------------------------------

Versao: 0.0.0

Data: 10/04/2026

Descricao do codigo: codigo original...

Codigo:

import 'package:cli/cli.dart' as cli;

void main(List<String> argumnets) {
	print('Hello World: ${cli.calculate()}!');
}

Saida padrao ao executar o codigo:

Comando: dart run bin/cli.dart || dart bin/cli.dart

Saida: Hello World: 42!

-------------------------------------------------------------------------------


Versao: 0.0.1

Data: 10/04/2026

Descricao do codigo:Simplifique a saida por enquanto. Apague a primeira linha (
voce nao precisa dessa declaracao de importacao) e altere a print declaracao pa
ra exibir uma saudacao simples:

import 'package:cli/cli.dart' as cli; // Delete this entire line

void main(List<String> arguments) {
  print('Hello, Dart!'); // Change this line
}

4. Salve o arquivo. Em seguida, no terminal, execute o programa novamente: 

Codigo:

void main(List<String> arguments) {
	print ('Hello, Dart!');
}

Saida padrao ao executar o codigo:

Comando: dart run || dart run bin/cli.dart

Saida: Hello, Dart!

-------------------------------------------------------------------------------

Versao: 0.0.2

Data: 10/04/2026

Descricao do codigo: 
1. Implemente o versioncomando em cli/bin/cli.dart: Adicione logica para lidar 
com um versioncomando que imprime a versao atual da CLI. Use um if instruÃ§Ã£o 
`if` para verificar se o primeiro argumento fornecido eh `true` version. Voce t
ambem precisara de uma version constante.

Primeiro, acima da sua main funcao, declare uma const variavel para a versao. O
valor de uma const variavel nunca pode ser alterado depois de ter sido definido:

const version = '0.0.1'; // Add this line

Em seguida, modifique sua mainfuncao para verificar o versionargumento:

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}

Essa $version sintaxe eh chamada de interpolacao de strings. Ela permite incorp
orar o valor da variavel diretamente em uma string, prefixando o nome da variav
el com um $sinal.

Codigo:

const version = '0.0.2';

void main(List<String> arguments) {
	if (arguments.isEmpty) {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	}
}
	

Saida padrao ao executar o codigo:

Comando: Dart run

Saida: Hello, Dart !

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.2

-------------------------------------------------------------------------------

Versao: 0.0.3

Data: 10/04/2026

Descricao do codigo: Adicione uma printUsage funcao: Para tornar a saida mais a
migavel ao usuario, crie uma funcao separada para exibir as informacoes de uso.
 Coloque essa funcao fora e abaixo da sua mainfuncao principal.

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

search eh o comando que eventualmente fara a busca na Wikipedia.

Codigo:

const version = '0.0.3';

void main(List<String> arguments) {
	if (arguments.isEmpty) {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	}
}
void printUsage() {
	print(
		"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: Dart run

Saida: Hello, Dart !

Comando: dart run bin/cli.dart version

Saida: Dartpedia CLI version 0.0.3

-------------------------------------------------------------------------------


Versao: 0.0.4

Data: 10/04/2026

Descricao do codigo: Implemente o help comando e refine main: Agora, integre o 
help comando usando uma else if instrucao e limpe o comportamento padrao para c
hamar a printUsage funcao.

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

 Entenda a if/else estrutura e as variaveis: Agora que voce implementou o fluxo
 de controle na main funcao, revise o codigo que foi adicionado a ela.

    . arguments.isEmpty Verifica se nenhum argumento de linha de comando foi fo
rnecido.

    . arguments.first Acessa o primeiro argumento, que voce esta usando como no
sso comando.

    . version eh declarado como um const. Isso significa que seu valor eh conhe
cido em tempo de compilacao e voce nao pode altera-lo durante a execucao.
    
    . arguments eh uma variavel regular (nao constante) porque seu conteudo pod
e mudar durante a execucao com base na entrada do usuario     .

Codigo:

const version = '0.0.4';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else {
		printUsage();
	}
}

void printUsage() {Descricao do codigo: Entenda a if/else estrutura e as variaveis: Agora que voce
 implementou o fluxo de controle na main funcao, revise o codigo que foi adicio
nado a ela.

    . arguments.isEmpty Verifica se nenhum argumento de linha de comando foi fo
rnecido.

    . arguments.first Acessa o primeiro argumento, que voce esta usando como no
sso comando.

    . version eh declarado como um const. Isso significa que seu valor eh conhecido em tempo de compilacao e voce nao pode altera-lo durante a execucao.
    
    . arguments eh uma variavel regular (nao constante) porque seu conteudo pode mudar durante a execucao com base na entrada do usuario     .

	print(
		"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.4

-------------------------------------------------------------------------------


Versao: 0.0.5

Data: 17/04/2026

Descricao do codigo:Tarefa 2: Implementar o comando de busca

Em seguida, implemente um comando basico search que receba o titulo de um artig
o como entrada. Ao desenvolver essa funcionalidade, voce trabalhara com List ma
nipulacao de dados, verificacao de valores nulos e interpolacao de strings.

1. Integre o search comando em main: Primeiro, modifique a mainfuncao cli/bin/c
li.dart para incluir um else iframo que lide com o search comando. Por enquanto
, basta imprimir uma mensagem de espaÃ§o reservado.

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

Codigo:

const version = '0.0.5';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
		print ('Search command recognized!');
	} else {
		printUsage();
	}
}

void printUsage() {
	print(
		"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.5

Comando: dart bin/cli.dart search

Saida: Search command recognized!

-------------------------------------------------------------------------------

Versao: 0.0.6

Data: 17/04/2026

Descricao do codigo: Defina a searchWikipedia funcao: O search comando eventual
mente executara a logica principal do seu aplicativo chamando uma funcao chamad
a searchWikipedia. Por enquanto, faca com que ela searchWikipedia imprima os ar
gumentos passados para ela com o search comando. 

Coloque esta nova funcao abaixo de main.

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)

Principais trechos do codigo anterior:

List<String>? arguments significa que a arguments prÃ³pria lista pode ser null.

Observacao

O Dart impoe uma seguranca robusta contra valores nulos , o que significa que v
oce precisa declarar explicitamente quando uma variavel pode ser nula. Qualquer
 variavel que nao seja marcada como anulavel tem a garantia de nunca ser nula, 
mesmo em producao.

O objetivo da seguranca contra valores nulos nao eh impedir que voce use `null`
 em seu codigo, pois representar a ausencia de um valor pode ser util. Em vez d
isso, ela visa forcar voce a considerar a possibilidade de valores nulos e, por
tanto, a ser mais cuidadoso com ela. Juntamente com o analisador, isso ajuda a 
prevenir uma das falhas de tempo de execucao mais comuns em programacao: erros 
de ponteiro nulo.

Codigo:

const version = '0.0.6';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
		searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) {
	print ('searchWikipedia received arguments: $arguments');
}

void printUsage() {
	print(
		"The following commands are valid: 'help', 'version', 'search <ARTICLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart || dart cli.da
rt help || dart cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version || dart cli.dart version

Saida: Dartpedia CLI version 0.0.6

Comando: dart bin/cli.dart search || dart cli.dart search

Saida: searchWikipedia received arguments: null

Comando: dart bin/cli.dart search Dart Programming || dart cli.dart search Dar
t Programming

Saida: searchWikipedia received arguments: [Dart, Programming]

-------------------------------------------------------------------------------

Versao: 0.0.7

Data: 24/04/2026

Descricao do codigo: Lide com a falta do titulo do artigo e a entrada do usuari
o com o stdin comando: Eh mais amigavel ao usuario solicitar o titulo caso ele 
nao o forneca na linha de comando. Use stdin.readLineSync() para isso.

Primeiro, adicione a importacao necessaria no inicio do seu cli/bin/cli.dart ar
quivo:

import 'dart:io'; // Add this line at the top

dart:io Eh uma biblioteca central no SDK do Dart e fornece APIs para lidar com 
arquivos, diretorios, sockets, clientes e servidores HTTP, e muito mais.

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

Declara uma final String articleTitle variavel. Isso permite que a analise esta
tica detecte que ela articleTitle sera um valor Stringe nao sera nula.

Em seguida, uma if/else instrucao verifica se os argumentos da linha de comando
 para a pesquisa foram fornecidos.

Caso faltem argumentos, o programa solicita informacoes ao usuario, le a entrad
a usando `read` stdin.readLineSync()e lida de forma segura com os casos em que 
nenhuma entrada eh fornecida.

Caso existam argumentos , ele arguments.join(' ') os combina em uma unica strin
g de busca.

Principais trechos do codigo anterior:

stdin.readLineSync() ?? ''Le a entrada do usuario. Embora stdin.readLineSync() 
possa retornar nulo, o operador de coalescencia nula (`\ ??n`) eh usado para fo
rnecer uma string vazia (`\ ''n`) como alternativa caso a entrada seja nula. Es
ta eh uma maneira concisa de garantir que a variavel seja uma string nao nula.

arguments.join(' ') Concatena todos os elementos da arguments lista em uma unic
a string, usando um espaÃ§o como separador. Por exemplo, ['Dart', 'Programmin
g'] torna-se "Dart Programming". Isso eh crucial para tratar entradas de linha 
de comando com varias palavras como uma unica frase de pesquisa.

A analise estÃ¡tica do Dart pode detectar que a articleTitle variavel eh gara
ntidamente inicializada quando a instrucao `print` eh executada. Independenteme
nte do caminho percorrido dentro do corpo desta funcao, a variavel nao pode ser
 nula.

Codigo:


import 'dart:io';

const version = '0.0.7';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
			searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) {
	final String ArticleTitle;
	if (arguments == null || arguments.isEmpty) {
		print ('Please provide an article title.');
		ArticleTitle = stdin.readLineSync() ?? '';
	} else {
		ArticleTitle = arguments.join(' ');
	} 
		print ('Current article title: $ArticleTitle');
}

void printUsage() {
	print(
		"The following commands are valid: 'help', 'version', 'search <ARTICLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart ||dart cli.dar
t help || dart cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version || dart cli.dart version

Saida: Dartpedia CLI version 0.0.7

Comando: dart bin/cli.dart search || dart cli.dart search

Saida: Please provide an article title

Comando:  dart bin/cli.dart search Dart Programming || dart cli.dart search Dar
t Programming

Saida: Current article title: [Dart Programming]

-------------------------------------------------------------------------------

Versao: 0.0.8

Data: 24/04/2026

Descricao do codigo: Finalizar searchWikipedia a impressao de resultados de pes
quisa simulados: Atualize searchWikipedia para exibir mensagens que indiquem qu
e nosso programa encontrou algo. Isso nos ajuda a visualizar o que nosso progra
ma final fara sem precisar compila-lo completamente agora. Voce so vera essas m
ensagens se incluir uma consulta de pesquisa ao executar o programa.

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

Codigo:

import 'dart:io';

const version = '0.0.8';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
			searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) {
	final String ArticleTitle;
	if (arguments == null || arguments.isEmpty) {
		print ('Please provide an article title.');
		ArticleTitle = stdin.readLineSync() ?? '';
	} else {
		ArticleTitle = arguments.join(' ');
	}
		print ('Looking up articles about "$ArticleTitle". Please wait.');
		print ('here ya go!');
		print ( '(Pretend this is an article about "ArticleTitle")');
}

void printUsage() {
	print (
		"The following commands are valid: 'help', 'version', 'search <ARTICLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart || dart cli.da
rt help || dart cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version || dart cli.dart version

Saida: Dartpedia CLI version 0.0.8

Comando: dart bin/cli.dart search || dart cli.dart search

Saida: Please provide an article title

Comando: dart bin/cli.dart search Dart Programming || dart cli.dart search Dart
 Programming

Saida: Looking up articles about "Dart Programming". Please wait.
	Here ya ho!
	(Pretend this is an article about "Dart Programming")
-------------------------------------------------------------------------------

Versao: 0.0.9

Data: 07/05/2026

Descricao do codigo: Agora que você adicionou o httppacote, precisa importá-l
o para o seu arquivo Dart para usar suas funcionalidades. Abra o dartpedia/bin/
cli.dart arquivo. Adicione a seguinte importdeclaração no início do arquivo,
 juntamente com a dart:ioimportação existente:
import 'dart:io';
import 'package:http/http.dart' as http; // Add this line

Esta linha importa o httppacote e atribui a ele o alias http. Depois disso, voc
ê pode se referir a classes e funções dentro do httppacote usando http.(por 
exemplo, http.Client, http.get). A as httpparte é uma convenção padrão para
 evitar conflitos de nomenclatura caso outra biblioteca importada também tenha
 uma classe ou função com nome semelhante.

Codigo: 

import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.9';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI Version $version');
	} else if (arguments.first == 'search') {
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
			searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) {
	final String ArticleTitle;
	if (arguments == null || arguments.isEmpty) {
		print ('Please provide an article title.');
		ArticleTitle = stdin.readLineSync() ?? '';
	} else {
		ArticleTitle = arguments.join(' ');
	}
		print ('looking up articles about "$ArticleTitle". Please wait.');
		print ('here ya go!');
		print ( '(Pretend this is an article about "ArticleTitle")');
}

void printUsage() {
	print (
		"The following commands are valid: 'help', 'version', 'search <ARTICLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart || dart cli.da
rt help || dart cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version || dart cli.dart version

Saida: Dartpedia CLI version 0.0.9

Comando: dart bin/cli.dart search || dart cli.dart search

Saida: Please provide an article title

Comando: dart bin/cli.dart search Dart Programming |\ dart cli.dart search Dart
 Programming

Saida : Looking up articles about "Dart Programming". Please wait.
	Here ya go!
	(Pretend this is an article about "Dart Programming")
-------------------------------------------------------------------------------

Versao: 0.0.10

Data: 07\05\2026

Descricao do codigo:Agora, crie uma nova função chamada `getData` getWikipedi
aArticle que lide com a busca de dados de uma API externa. Essa função será c
hamada async de `getData` porque as requisições de rede são operações assí
ncronas.

Defina a assinatura da função: Abaixo da sua main função (e printUsagefunç
ão), adicione a seguinte assinatura de função.

// ... (your existing printUsage() function)

Future<String> getWikipediaArticle(String articleTitle) async {
  //You'll add more code here soon
}

Principais trechos do codigo anterior:
 O Future<String> tipo de retorno indica que esta função eventualmente produz
irá um String resultado, mas não imediatamente, pois é uma operação assín
crona.
 A async palavra-chave marca a função como assíncrona, permitindo que você 
a utilize await dentro dela.

 Construa a URL da API: Dentro da sua nova getWikipediaArticle função, crie u
m Uriobjeto. O `url` Urirepresenta o endpoint da API da Wikipédia que você ch
amará para obter um resumo do artigo.
 Adicione estas linhas dentro da getWikipediaArticle função:

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
  );
  // ...
}

Faça a requisição HTTP e processe a resposta:get Agora, use a função de n
ível superior para package:http fazer uma GET requisição HTTP para a URL que 
você acabou de construir. A await palavra-chave `pause` pausa a execução de `
request` getWikipediaArticle até que a getchamada seja concluída e retorne um
 http.Response objeto.

Após a conclusão da requisição, verifique o status response.statusCodepara 
garantir que a requisição foi bem-sucedida (um código de status 1 200signifi
ca OK). Se bem-sucedida, retorne o objeto response.body`request`, que contém o
s dados obtidos (neste caso, JSON bruto). Se a requisição falhar, retorne uma
 mensagem de erro informativa.

Adicione estas linhas após a Uri construção dentro de getWikipediaArticle:

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.10';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
			searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) {
	final String ArticleTitle;
	if (arguments == null || arguments.isEmpty) {
		print ('Please provide an article title.');
		ArticleTitle = stdin.readLineSync() ?? '';
	} else {
		ArticleTitle = arguments.join(' ');
	}
		print ('Looking up articles about "$ArticleTitle". Please wait.');
		print ('here ya go!');
		print ( '(Pretend this is an article about "ArticleTitle")');
}

void printUsage() {
	print (
		"The following commands are valid: 'help', 'version', 'search <ARTICLE>'"
	);
}

Future<String> getWikipediaArticle(String ArticleTitle) async {
	final url = Uri.https(
		'en.wikipedia.org',
		'/api/rest_v1/page/summary/$ArticleTitle',
	);
	final response = await http.get(url);

	if (response.statusCode == 200) {
		return response.body;
	}
	
	return 'Error: Failed to fetch article "$ArticleTitle". Status code: ${response.statusCode}';
}

Saida padrao do codigo:

Codigo: dart bin/cli.dart help || dart run || dart bin/cli.dart || dart cli.da
rt help || dart cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version || dart cli.dart version

Saida: Dartpedia CLI versions 0.0.10

Comando: dart bin/cli.dart search || dart cli.dart search

Saida: Please provide an article title

Comando: dart bin/cli.dart search Dart Programming || dart cli.dart search Dart
 Programming

Saida:  Looking up articles about "Dart Programming". Please wait.
	Here ya go!
	(Pretend this is an article about "Dart Programming")
-------------------------------------------------------------------------------

Versao: 0.0.11

Data: 07/05/2026

Descricao do codigo: Você integrará a chamada da API em searchWikipedia. Essa
 função conterá a lógica principal para lidar com o wikipedia comando.

Atualização searchWikipedia para uso async: Localize sua searchWikipedia funç
ão e atualize sua assinatura para async que ela agora execute operações assí
ncronas.

Sua searchWikipediafunção agora deve ter esta aparência (parte inicial):
// ... (your existing main function)

void searchWikipedia(List<String>? arguments) async { // Added 'async'
  final String? articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync(); // Await input from the user
    // You'll add error handling for null input here in a moment
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

// ... (your existing printUsage() function)

Principais trechos do código anterior:

void searchWikipedia(List<String>? arguments) asyncA função agora é async. I
sso é essencial porque ela chamará getWikipediaArticle, que asyncpor si só 
é uma função e precisará de await seu resultado.

Adicione nullverificações de entrada do usuário para strings vazias: Dentro 
searchWikipediado ifbloco que trata o caso em que nenhum argumento é fornecido
, refine-o. Se stdin.readLineSync()o resultado for nulo null(por exemplo, se o 
usuário pressionar Ctrl+D/Ctrl+Z) ou uma string vazia, imprima uma mensagem e 
saia da função.

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); // Read input
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return; // Exit the function if no valid input
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Chame a função getWikipediaArticlee imprima o resultado: Agora, modifique a s
earchWikipediafunção para chamar sua nova getWikipediaArticlefunção e impri
mir o resultado. Em seguida, substitua as printinstruções de espaço reservad
o anteriores pela chamada de API real.

// ... (beginning of searchWikipedia function, after determining articleTitle)

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

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Principais trechos do código anterior:

await getWikipediaArticle(articleTitle)Como `is` getWikipediaArticleé uma asyn
cfunção, você precisa retornar o awaitresultado dela. Isso pausa a searchWikip
ediafunção até que o Future<String>resultado retornado por `is` getWikipediaAr
ticle seja resolvido em um ` Stringarticle` contendo o conteúdo do artigo.
print(articleContent)Exibe o resumo do artigo obtido como uma string JSON bruta
 no console.

Codigo:

import 'dart:io';

import 'package:http/http.dart' as http;

const version = '0.0.11';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		print ('hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
			searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) async {
	final String ArticleTitle;
	if (arguments == null || arguments.isEmpty) {
		print ('Please provide an article title.');
	final inputFromStdin = stdin.readLineSync();
	if (inputFromStdin == null || inputFromStdin.isEmpty) {
		print ('No article title provided. Exiting.');
		return;
	}
	ArticleTitle = inputFromStdin;
	}  else {
		ArticleTitle = arguments.join(' ');
	}
		print ('Looking up articles about "$ArticleTitle". Please wait. ');
		var ArticleContent = await getWikipediaArticle(ArticleTitle);
		print(ArticleContent);
}

void printUsage() {
	print (
		"The following commands are valid: 'help', 'version', 'search <article>'"
	);
}

Future<String> getWikipediaArticle(String ArticleTitle) async {
	final url = Uri.https(
		'en.wikipedia.org',
		'/api/rest_v1/page/summary/$ArticleTitle',
	);
	final response = await http.get(url);

	if (response.statusCode == 200) {
		return response.body;
	}

	return 'Error: Failed to fetch article "$ArticleTitle". Status code: ${response.statusCode}';
}

Saida padrao do codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart || dart cli.da
rt hel || dart cli.dart

Saida: Hello, Dart!

Comando: dart bin/cli.dart version || dart cli.dart version

Saida: Dartpedia CLI version 0.0.11

Comando: dart bin/cli.dart search || dart cli.dart search

Saida: Please provide an article title

Comando: dart bin/cli.dart search Dart Programming || dart cli.dart search Dart
 Programming

Siada: Looking up articles about "Dart Programming". Please wait. 
       Error: Failed to fetch article "Dart Programming". Status code: 404
-------------------------------------------------------------------------------

Versao: 0.0.12

Data: 07/05/2026

Descricao do codigo: Por fim, atualize sua função para chame a nova função 
quando o comando é usado. mainsearchWikipediawikipedia

Localize o bloqueio na sua função que Atualmente cuida do comando. Mude o nom
e do comando de para e Atualize a chamada de função.else ifmainsearchsearchwi
kipedia

No código de exemplo, a chamada para , não é a chamada para , ou seja, o pr
óprio significado não precisa ser marcado .mainawaitsearchWikipediamainasync

Sua função agora deve ser assim:main

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}

arguments.sublist(1): Isso extrai todos os elementos da lista, começando pelo 
segundo elemento (índice 1). Isso remove efetivamente o comando em si, Então 
só recebe os argumentos reais do título do artigo.argumentswikipediasearchWik
ipedia
searchWikipedia(inputArgs): Isso liga diretamente. Já que não precisa fazer q
ualquer coisa depois de completar, Você não precisa de isso a partir de . Por
tanto, não precisa ser .searchWikipediamainsearchWikipediaawaitmainmainasync

Codigo:

import 'dart:io';

import 'package:http/http.dart' as http;

const version = '0.0.12';

void main(List<String> arguments) {
        if (arguments.isEmpty || arguments.first == 'help') {
                printUsage();
        } else if (arguments.first == 'version') {
                print ('Dartpedia CLI version $version');
        } else if (arguments.first == 'Wikipedia') {
                final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
                        searchWikipedia(inputArgs);
        } else {
                printUsage();
        }
}

void searchWikipedia(List<String>? arguments) async {
        final String ArticleTitle;
        if (arguments == null || arguments.isEmpty) {
                print ('Please provide an article title.');
        final inputFromStdin = stdin.readLineSync();
        if (inputFromStdin == null || inputFromStdin.isEmpty) {
                print ('No article title provided. Exiting.');
                return;
        }
        ArticleTitle = inputFromStdin;
        }  else {
                ArticleTitle = arguments.join(' ');
        }
                print ('Looking up articles about "$ArticleTitle". Please wait. ');
                var ArticleContent = await getWikipediaArticle(ArticleTitle);
                print(ArticleContent);
}

void printUsage() {
        print (
                "The following commands are valid: 'help', 'version', 'Wikipedia <article>'"
        );
}

Future<String> getWikipediaArticle(String ArticleTitle) async {
        final url = Uri.https(
                'en.wikipedia.org',
                '/api/rest_v1/page/summary/$ArticleTitle',
        );
        final response = await http.get(url);

        if (response.statusCode == 200) {
                return response.body;
        }

        return 'Error: Failed to fetch article "$ArticleTitle". Status code: ${response.statusCode}';
}
/*
Saida padrao do codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart || dart cli.da
rt hel || dart cli.dart

Saida: The following commands are valid: 'help', 'version', 'Wikipedia <article>

Comando: dart bin/cli.dart version || dart cli.dart version

Saida: Dartpedia CLI version 0.0.12

Comando: dart bin/cli.dart Wikipedia || dart cli.dart Wikipedia

Saida: Please provide an article title

Comando: dart bin/cli.dart Wikipedia Dart Programming || dart cli.dart Wikipedi
a Dart Programming

Siada: Looking up articles about "Dart Programming". Please wait. 
       Error: Failed to fetch article "Dart Programming". Status code: 404
-------------------------------------------------------------------------------

Versao: 0.0.13

Data: 14/05/2026

Descricao do codigo: Agora que você adicionou como dependência, Você pode impor
tar para sua aplicação e Substitua sua lógica de tratamento de argumentos exis
tente por a nova turma. Essa etapa também corrige o comportamento de saída do p
rograma discutido no final do Capítulo 3. command_runnercliCommandRunner

Abra o arquivo.cli/bin/cli.dart

Adicione a seguinte declaração de importação no topo do arquivo, junto com Seus
 outros importados:

import 'package:command_runner/command_runner.dart';
Esta declaração importa o pacote, disponibilizando a classe para uso.command_runnerCommandRunner

Refatore a função principal e remova a lógica antiga: Atualmente, sua função do
 Capítulo 3 lida diretamente com os comandos como , , e , e então chama . Agora
 você vai substituir toda essa lógica personalizada de manuseio de comandos por
 Uma única ligação para a nova turma.mainversionhelpwikipediasearchWikipediaCom
mandRunner

Seu arquivo cli/bin/cli.dart (do Capítulo 3) deve Atualmente, está assim:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

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

void searchWikipedia(List<String>? arguments) async {  ... existing logic ...  }
void printUsage() {  ... existing logic ...  }
Future<String> getWikipediaArticle(String articleTitle) async {  ... existing logic ...  }
**Agora, substitua todo o conteúdo de (exceto a importação) pela seguinte ve
rsão atualizada:cli/bin/cli.darthttp

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}
Destaques do código anterior:

void main(List<String> arguments) async diretamente resolve o problema de não 
sair limpo do Capítulo 3. Note que agora está declarado . Isso é essencial p
orque retorna um , e deve ser concluído para garantir que o programa espere par
a que todas as tarefas assíncronas sejam concluídas antes de sair.mainasyncrunn
er.run()Futuremainawait
var runner = CommandRunner(); Cria uma instância da classe a partir do seu novo
 pacote.CommandRunnercommand_runner
await runner.run(arguments); chama o método na instância, passando os argumento
s da linha de comando.runCommandRunner
Funções removidas:

As funções , , an agora estão completamente removidos de . A lógica deles será 
redesenhada e transferida para O pacote nos próximos capítulos, como parte da c
onstrução do framework completo de linha de comando.printUsagesearchWikipedia g
etWikipediaArticlecli/bin/cli.dartcommand_runner

Codigo:
*/

