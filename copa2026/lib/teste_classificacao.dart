import 'grupo.dart';
import 'selecao.dart';
import 'partida.dart';
import 'classificacao.dart';


void main() {


  // Criando seleções do Grupo C

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


  Selecao marrocos = Selecao(
    nome: 'Marrocos',
    grupo: Grupo.C,
    rankingFifa: 12,
  );


  Selecao escocia = Selecao(
    nome: 'Escócia',
    grupo: Grupo.C,
    rankingFifa: 44,
  );



  // Simulando partidas

  print('\n=== PRIMEIRA PARTIDA ===');

  registrarJogo(
    brasil,
    argentina,
  );


  print('\n=== SEGUNDA PARTIDA ===');

  registrarJogo(
    marrocos,
    escocia,
  );


  print('\n=== TERCEIRA PARTIDA ===');

  registrarJogo(
    brasil,
    marrocos,
  );


  print('\n=== QUARTA PARTIDA ===');

  registrarJogo(
    argentina,
    escocia,
  );



  // Criando lista do grupo

  List<Selecao> grupoC = [

    brasil,
    argentina,
    marrocos,
    escocia,

  ];



  // Ordenando classificação

  ordenarClassificacao(
    grupoC,
  );



  // Mostrando tabela

  mostrarClassificacao(
    grupoC,
    'C',
  );


}
