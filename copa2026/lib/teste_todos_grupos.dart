import 'grupos.dart';
import 'classificacao.dart';


void main() {


  print('======================================');
  print('   SIMULADOR COPA DO MUNDO 2026');
  print('   TESTE DE CLASSIFICAÇÃO');
  print('======================================');



  // Percorre todos os grupos

  for (var grupo in grupos.entries) {


    print('\n\n======================================');
    print('              GRUPO ${grupo.key.name}');
    print('======================================');


    // Ordena classificação do grupo

    ordenarClassificacao(
      grupo.value,
    );


    // Mostra tabela

    mostrarClassificacao(
      grupo.value,
      grupo.key.name,
    );


  }


}
