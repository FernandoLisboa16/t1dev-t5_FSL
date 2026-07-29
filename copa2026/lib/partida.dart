import 'dart:io';

import 'selecao.dart';
import 'partida_modelo.dart';



final List<Partida> partidasRegistradas = [];



int lerNumero(String mensagem) {

  while (true) {

    try {

      print(mensagem);

      int valor = int.parse(
        stdin.readLineSync()!,
      );


      if (valor < 0) {

        print(
          'Erro: Digite um número positivo!',
        );

        continue;

      }


      return valor;


    } catch (e) {

      print(
        'Erro: Digite um placar válido!',
      );

    }

  }

}





void registrarJogo(
  Selecao timeA,
  Selecao timeB,
) {


  print('\n==============================');
  print('      REGISTRAR PARTIDA');
  print('==============================');


  print('${timeA.nome} x ${timeB.nome}');



  int golsA = lerNumero(
    'Gols do ${timeA.nome}:',
  );


  int golsB = lerNumero(
    'Gols do ${timeB.nome}:',
  );



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



  // Atualiza gols

  timeA.golsPro += golsA;
  timeA.golsSofridos += golsB;


  timeB.golsPro += golsB;
  timeB.golsSofridos += golsA;



  // Atualiza cartões

  timeA.cartoesAmarelos += amarelosA;
  timeB.cartoesAmarelos += amarelosB;


  timeA.cartoesVermelhos += vermelhosA;
  timeB.cartoesVermelhos += vermelhosB;



  // Atualiza pontos

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



  // Salva histórico da partida

  partidasRegistradas.add(

    Partida(
      timeA: timeA,
      timeB: timeB,
      golsTimeA: golsA,
      golsTimeB: golsB,
    ),

  );



  print('\nPartida registrada com sucesso!');
}
