import 'grupo.dart';

class Selecao {
  Selecao({
    required this.nome,
    required this.grupo,
    required this.rankingFifa,
  });

  final String nome;
  final Grupo grupo;

  int pontos = 0;
  int golsPro = 0;
  int golsSofridos = 0;

  int cartoesAmarelos = 0;
  int cartoesVermelhos = 0;

  final int rankingFifa;

  int get saldoGols => golsPro - golsSofridos;

  @override
  String toString() {
    return '''
Nome: $nome
Grupo: ${grupo.name}
Pontos: $pontos
Gols Pró: $golsPro
Gols Sofridos: $golsSofridos
Saldo de Gols: $saldoGols
Cartões Amarelos: $cartoesAmarelos
Cartões Vermelhos: $cartoesVermelhos
Ranking FIFA: $rankingFifa
''';
  }
}
