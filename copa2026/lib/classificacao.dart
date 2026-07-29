import 'selecao.dart';
import 'partida.dart';


List<Selecao> ordenarClassificacao(
  List<Selecao> selecoes,
) {

  selecoes.sort((a, b) {


    // 1º Critério: Pontos

    if (a.pontos != b.pontos) {

      return b.pontos.compareTo(a.pontos);

    }



    // 2º Critério: Saldo de gols

    if (a.saldoGols != b.saldoGols) {

      return b.saldoGols.compareTo(a.saldoGols);

    }



    // 3º Critério: Gols pró

    if (a.golsPro != b.golsPro) {

      return b.golsPro.compareTo(a.golsPro);

    }



    // 4º Critério: Confronto direto

    int confronto = compararConfrontoDireto(
      a,
      b,
    );


    if (confronto != 0) {

      return confronto;

    }



    // 5º Critério: Fair Play
    // Menos cartões é melhor

    int cartoesA =
        a.cartoesAmarelos +
        (a.cartoesVermelhos * 3);


    int cartoesB =
        b.cartoesAmarelos +
        (b.cartoesVermelhos * 3);



    if (cartoesA != cartoesB) {

      return cartoesA.compareTo(cartoesB);

    }



    // 6º Critério: Ranking FIFA

    return a.rankingFifa.compareTo(
      b.rankingFifa,
    );

  });


  return selecoes;

}






int compararConfrontoDireto(
  Selecao timeA,
  Selecao timeB,
) {


  for (var partida in partidasRegistradas) {


    if (
      partida.timeA == timeA &&
      partida.timeB == timeB
    ) {


      if (
        partida.golsTimeA >
        partida.golsTimeB
      ) {

        return -1;

      }


      if (
        partida.golsTimeB >
        partida.golsTimeA
      ) {

        return 1;

      }

    }



    if (
      partida.timeA == timeB &&
      partida.timeB == timeA
    ) {


      if (
        partida.golsTimeB >
        partida.golsTimeA
      ) {

        return -1;

      }


      if (
        partida.golsTimeA >
        partida.golsTimeB
      ) {

        return 1;

      }

    }

  }



  return 0;

}






void mostrarClassificacao(
  List<Selecao> selecoes,
  String grupo,
) {


  print(
    '\n=== CLASSIFICAÇÃO GRUPO $grupo ===\n',
  );


  print(
    'Pos | Seleção | Pts | SG | GP | Ranking FIFA',
  );


  print(
    '---------------------------------------------',
  );



  int posicao = 1;



  for (var selecao in selecoes) {


    print(
      '$posicaoº | '
      '${selecao.nome} | '
      '${selecao.pontos} | '
      '${selecao.saldoGols >= 0 ? "+" : ""}'
      '${selecao.saldoGols} | '
      '${selecao.golsPro} | '
      '${selecao.rankingFifa}º',
    );


    posicao++;

  }

}
