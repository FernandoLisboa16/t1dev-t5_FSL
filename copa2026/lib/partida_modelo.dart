import 'selecao.dart';


class Partida {

  final Selecao timeA;
  final Selecao timeB;

  final int golsTimeA;
  final int golsTimeB;


  Partida({
    required this.timeA,
    required this.timeB,
    required this.golsTimeA,
    required this.golsTimeB,
  });


  // Verifica vencedor do confronto

  Selecao? get vencedor {

    if (golsTimeA > golsTimeB) {
      return timeA;
    }

    if (golsTimeB > golsTimeA) {
      return timeB;
    }

    return null;
  }

}
