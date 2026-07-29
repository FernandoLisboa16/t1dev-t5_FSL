import 'grupo.dart';
import 'selecao.dart';
import 'classificacao.dart';


void main() {

  print('======================================');
  print(' TESTE DOS CRITERIOS DE DESEMPATE ');
  print('======================================');


  Selecao brasil = Selecao(
    nome: 'Brasil',
    grupo: Grupo.C,
    rankingFifa: 5,
  );


  Selecao argentina = Selecao(
    nome: 'Argentina',
    grupo: Grupo.C,
    rankingFifa: 1,
  );


  Selecao franca = Selecao(
    nome: 'Franca',
    grupo: Grupo.C,
    rankingFifa: 2,
  );


  Selecao alemanha = Selecao(
    nome: 'Alemanha',
    grupo: Grupo.C,
    rankingFifa: 9,
  );


  // Teste 1:
  // Brasil e Argentina empatados em pontos.
  // Brasil vence pelo saldo de gols.

  brasil.pontos = 6;
  brasil.golsPro = 5;
  brasil.golsSofridos = 1;


  argentina.pontos = 6;
  argentina.golsPro = 4;
  argentina.golsSofridos = 2;



  // Teste 2:
  // Franca e Alemanha empatados em pontos.
  // Mesmo saldo.
  // Franca vence pelo maior numero de gols feitos.

  franca.pontos = 6;
  franca.golsPro = 6;
  franca.golsSofridos = 3;


  alemanha.pontos = 6;
  alemanha.golsPro = 4;
  alemanha.golsSofridos = 1;



  List<Selecao> tabela = [

    argentina,
    alemanha,
    brasil,
    franca,

  ];



  ordenarClassificacao(
    tabela,
  );


  mostrarClassificacao(
    tabela,
    'TESTE',
  );

}
