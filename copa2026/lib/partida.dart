import 'dart:io';

import 'selecao.dart';


// Lê números digitados pelo usuário com tratamento de erro
int lerNumero(String mensagem) {
  while (true) {
    try {
      print(mensagem);

      int valor = int.parse(stdin.readLineSync()!);

      if (valor < 0) {
        print('Erro: Digite um número positivo!');
        continue;
      }

      return valor;

    } catch (e) {
      print('Erro: Digite um placar válido!');
    }
  }
}


// Registra uma partida entre duas seleções
void registrarJogo(
  Selecao timeA,
  Selecao timeB,
) {

  print('\n==============================');
  print('      REGISTRAR PARTIDA');
  print('==============================');

  print('${timeA.nome} x ${timeB.nome}\n');


  // Entrada dos gols

  int golsA = lerNumero(
    'Gols do ${timeA.nome}:',
  );


  int golsB = lerNumero(
    'Gols do ${timeB.nome}:',
  );



  // Entrada dos cartões

  int amarelosA = lerNumero(
    'Cartões amarelos do ${timeA.nome}:',
  );


  int amarelosB = lerNumero(
    'Cartões amarelos do ${timeB.nome}:',
  );


  int vermelhosA = lerNumero(
    'Cartões vermelhos do ${timeA.nome}:',
  );


  int vermelhosB = lerNumero(
    'Cartões vermelhos do ${timeB.nome}:',
  );



  // Atualização dos gols

  timeA.golsPro += golsA;
  timeA.golsSofridos += golsB;

  timeB.golsPro += golsB;
  timeB.golsSofridos += golsA;



  // Atualização dos cartões

  timeA.cartoesAmarelos += amarelosA;
  timeB.cartoesAmarelos += amarelosB;

  timeA.cartoesVermelhos += vermelhosA;
  timeB.cartoesVermelhos += vermelhosB;



  // Atualização da pontuação

  if (golsA > golsB) {

    timeA.pontos += 3;

  } 
  
  else if (golsB > golsA) {

    timeB.pontos += 3;

  } 
  
  else {

    timeA.pontos += 1;
    timeB.pontos += 1;

  }



  // Resultado final

  print('\n==============================');
  print('      PARTIDA FINALIZADA');
  print('==============================');

  print(
    '${timeA.nome} $golsA x $golsB ${timeB.nome}',
  );


  print('\nTabela atualizada:');

  print(
    '${timeA.nome}: ${timeA.pontos} pontos',
  );

  print(
    '${timeB.nome}: ${timeB.pontos} pontos',
  );

}
