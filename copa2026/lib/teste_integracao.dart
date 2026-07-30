import 'carregador_json.dart';
import 'selecao.dart';

Future<void> main() async {
  print('================================');
  print(' TESTE INTEGRACAO COPA 2026 ');
  print('================================');

  try {
    List<Selecao> selecoes = await carregarDadosCopa();

    print('Total carregado: ${selecoes.length}');
    print('');

    for (var selecao in selecoes) {
      String nomeGrupo = selecao.grupo.toString().split('.').last;

      print(
        '${selecao.nome} - '
        'Grupo $nomeGrupo - '
        'Ranking ${selecao.rankingFifa}',
      );
    }

    print('');
    print('Teste concluido com sucesso.');
  } catch (erro) {
    print('Erro: $erro');
  }
}
