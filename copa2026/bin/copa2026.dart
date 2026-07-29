import 'dart:io';

import '../lib/copa2026.dart';
import '../lib/partida.dart';
import '../lib/selecao.dart';

void main() {
  while (true) {
    print('\n==============================');
    print(' SIMULADOR COPA DO MUNDO 2026 ');
    print('==============================');
    print('1 - Registrar jogo');
    print('2 - Ver classificação');
    print('3 - Sair');

    stdout.write('\nEscolha uma opção: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        registrarPartidaGrupoC();
        break;

      case '2':
        mostrarGrupoC();
        break;

      case '3':
        print('\nAté logo!');
        return;

      default:
        print('\nOpção inválida!');
    }
  }
}

void registrarPartidaGrupoC() {
  List<Selecao> grupo = grupos[Grupo.C]!;

  print('\nSeleções do Grupo C:');

  for (int i = 0; i < grupo.length; i++) {
    print('${i + 1} - ${grupo[i].nome}');
  }

  stdout.write('\nEscolha o Time A: ');
  int a = int.parse(stdin.readLineSync()!) - 1;

  stdout.write('Escolha o Time B: ');
  int b = int.parse(stdin.readLineSync()!) - 1;

  if (a == b) {
    print('\nUma seleção não pode jogar contra ela mesma!');
    return;
  }

  registrarJogo(grupo[a], grupo[b]);
}

void mostrarGrupoC() {
  List<Selecao> grupo = grupos[Grupo.C]!;

  print('\n========== GRUPO C ==========');

  print(
      'Seleção\t\tPts\tGP\tGC\tSG\tCA\tCV');

  for (var selecao in grupo) {
    print(
      '${selecao.nome}\t'
      '${selecao.pontos}\t'
      '${selecao.golsPro}\t'
      '${selecao.golsSofridos}\t'
      '${selecao.saldoGols}\t'
      '${selecao.cartoesAmarelos}\t'
      '${selecao.cartoesVermelhos}',
    );
  }
}

