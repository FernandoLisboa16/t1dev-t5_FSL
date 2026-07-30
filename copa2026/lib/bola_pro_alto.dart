import 'dart:io';

import 'carregador_json.dart';
import 'classificacao.dart';
import 'grupo.dart';
import 'grupos.dart';
import 'partida.dart';
import 'selecao.dart';

Future<void> main() async {
  print('===========================================');
  print('      BOLA PRO ALTO - COPA DO MUNDO 2026');
  print('===========================================');

  try {
    await carregarDadosCopa();
    print('Dados da Copa carregados com sucesso!');
  } catch (_) {
    print('Aviso: utilizando os dados locais do projeto.');
  }

  bool executando = true;

  while (executando) {
    exibirMenu();

    String? entrada = stdin.readLineSync();

    switch (entrada) {
      case '1':
        registrarResultado();
        break;

      case '2':
        visualizarClassificacao();
        break;

      case '3':
        mostrarTodosOsGrupos();
        break;

      case '4':
        executando = false;
        print('\nObrigado por utilizar o BOLA PRO ALTO!');
        break;

      default:
        print('\nOpcao invalida.');
    }
  }
}

void exibirMenu() {
  print('');
  print('============== MENU ==============');
  print('1 - Registrar resultado');
  print('2 - Ver classificacao');
  print('3 - Mostrar grupos');
  print('4 - Sair');
  stdout.write('\nEscolha uma opcao: ');
}

Grupo? escolherGrupo() {
  print('');
  print('Grupos disponiveis');

  for (var grupo in Grupo.values) {
    print('- ${grupo.toString().split('.').last}');
  }

  stdout.write('\nDigite o grupo: ');

  String? entrada = stdin.readLineSync();

  if (entrada == null) {
    return null;
  }

  entrada = entrada.trim().toUpperCase();

  for (var grupo in Grupo.values) {
    if (grupo.toString().split('.').last == entrada) {
      return grupo;
    }
  }

  print('\nGrupo invalido.');

  return null;
}

void mostrarTimes(List<Selecao> selecoes) {
  print('');

  for (int i = 0; i < selecoes.length; i++) {
    print('${i + 1} - ${selecoes[i].nome}');
  }
}

Selecao? escolherTime(List<Selecao> selecoes, String mensagem) {
  stdout.write('\n$mensagem ');

  try {
    int indice = int.parse(stdin.readLineSync()!);

    if (indice < 1 || indice > selecoes.length) {
      print('Time invalido.');
      return null;
    }

    return selecoes[indice - 1];
  } catch (_) {
    print('Entrada invalida.');
    return null;
  }
}

void registrarResultado() {
  Grupo? grupo = escolherGrupo();

  if (grupo == null) {
    return;
  }

  List<Selecao> selecoes = grupos[grupo]!;

  print('\nGrupo ${grupo.toString().split('.').last}');
  mostrarTimes(selecoes);

  Selecao? timeA = escolherTime(
    selecoes,
    'Escolha o primeiro time:',
  );

  if (timeA == null) {
    return;
  }

  Selecao? timeB = escolherTime(
    selecoes,
    'Escolha o segundo time:',
  );

  if (timeB == null) {
    return;
  }

  if (timeA == timeB) {
    print('\nErro: escolha dois times diferentes.');
    return;
  }

  registrarJogo(
    timeA,
    timeB,
  );
}

void visualizarClassificacao() {
  Grupo? grupo = escolherGrupo();

  if (grupo == null) {
    return;
  }

  List<Selecao> tabela = List.from(
    grupos[grupo]!,
  );

  ordenarClassificacao(
    tabela,
  );

  mostrarClassificacao(
    tabela,
    grupo.toString().split('.').last,
  );
}

void mostrarTodosOsGrupos() {
  print('');

  print('===========================================');
  print('           GRUPOS DA COPA 2026');
  print('===========================================');

  for (var grupo in Grupo.values) {
    print('');

    print(
      'Grupo ${grupo.toString().split('.').last}',
    );

    print('---------------------------');

    List<Selecao> selecoes = grupos[grupo]!;

    for (var selecao in selecoes) {
      print(
        '${selecao.nome} '
        '(Ranking FIFA ${selecao.rankingFifa})',
      );
    }
  }

  print('');
}
