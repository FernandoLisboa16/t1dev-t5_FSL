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

-------------------------------------------------------------------------------

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



Versao: 0.0.3

Data: 10/04/2026

Descricao do codigo: Adicione uma printUsage funcao: Para tornar a saida mais amigavel ao usuario, crie uma funcao separada para exibir as informacoes de uso. Coloque essa funcao fora e abaixo da sua mainfuncao principal.

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

search eh o comando que eventualmente fara a busca na Wikipedia.

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

Comando: dart run bin/cli.dart version

Saida: Dartpedia CLI version 0.0.3

*/
