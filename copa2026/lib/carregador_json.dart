import 'dart:convert';
import 'dart:io';

import 'grupo.dart';
import 'logs.dart';
import 'selecao.dart';

Future<List<Selecao>> carregarDadosCopa() async {
  try {
    File arquivo = File('lib/dados_copa.json');

    String conteudo = await arquivo.readAsString();

    List dados = jsonDecode(conteudo);

    List<Selecao> selecoes = [];

    for (var item in dados) {
      Grupo grupo = Grupo.values.firstWhere(
        (g) => g.toString().split('.').last == item['grupo'],
      );

      selecoes.add(
        Selecao(
          nome: item['nome'],
          grupo: grupo,
          rankingFifa: item['rankingFifa'],
        ),
      );
    }

    registrarLog('Dados da Copa carregados com sucesso');

    return selecoes;
  } catch (erro) {
    registrarLog('Erro ao carregar dados: $erro');

    throw Exception('Erro ao carregar dados da Copa');
  }
}
