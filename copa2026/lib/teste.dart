import 'grupo.dart';
import 'selecao.dart';
import 'partida.dart';


void main() {

  // Criando duas seleções para teste

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



  // Mostra estado inicial

  print('=== ANTES DA PARTIDA ===');

  print('${brasil.nome}:');
  print('Pontos: ${brasil.pontos}');
  print('Gols: ${brasil.golsPro}');

  print('');

  print('${argentina.nome}:');
  print('Pontos: ${argentina.pontos}');
  print('Gols: ${argentina.golsPro}');



  // Registra o jogo

  registrarJogo(
    brasil,
    argentina,
  );



  // Mostra resultado atualizado

  print('\n=== DEPOIS DA PARTIDA ===');


  print('${brasil.nome}:');
  print('Pontos: ${brasil.pontos}');
  print('Gols Pró: ${brasil.golsPro}');
  print('Gols Sofridos: ${brasil.golsSofridos}');
  print('Cartões Amarelos: ${brasil.cartoesAmarelos}');
  print('Cartões Vermelhos: ${brasil.cartoesVermelhos}');


  print('');


  print('${argentina.nome}:');
  print('Pontos: ${argentina.pontos}');
  print('Gols Pró: ${argentina.golsPro}');
  print('Gols Sofridos: ${argentina.golsSofridos}');
  print('Cartões Amarelos: ${argentina.cartoesAmarelos}');
  print('Cartões Vermelhos: ${argentina.cartoesVermelhos}');

}
