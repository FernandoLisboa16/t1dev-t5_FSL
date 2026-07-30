import 'carregador_json.dart';
import 'selecao.dart';

Future<void> main() async {
  print('======================================');
  print('     TESTE DADOS COPA 2026');
  print('======================================');

  try {
    List<Selecao> selecoes = await carregarDadosCopa();

    print('\nDados carregados com sucesso!');
    print('Total de selecoes: ${selecoes.length}\n');

    print('======================================');
    print('      SELECOES CARREGADAS');
    print('======================================');

    for (var selecao in selecoes) {
      String grupo = selecao.grupo.toString().split('.').last;

      print('Nome: ${selecao.nome}');
      print('Grupo: $grupo');
      print('Ranking FIFA: ${selecao.rankingFifa}');
      print('------------------------------');
    }
  } catch (erro) {
    print('\nErro ao carregar dados da Copa:');
    print(erro);
  }

  print('\nTeste finalizado.');
}
