import 'carregador_json.dart';


Future<void> main() async {

  print('======================================');
  print('     TESTE DADOS COPA 2026');
  print('======================================');


  try {

    final dados = await carregarDadosCopa();


    print('\nDados carregados com sucesso!');
    print('Total de selecoes: ${dados.length}');


    print('\n======================================');
    print('          SELECOES CARREGADAS');
    print('======================================');


    for (var selecao in dados) {

      print(
        'Nome: ${selecao['nome']}',
      );

      print(
        'Grupo: ${selecao['grupo']}',
      );

      print(
        'Ranking FIFA: ${selecao['rankingFifa']}',
      );

      print(
        '------------------------------',
      );

    }


  } catch (erro) {


    print('\nErro ao carregar dados da Copa:');

    print(
      erro.toString(),
    );


  }


  print('\nTeste finalizado.');

}
