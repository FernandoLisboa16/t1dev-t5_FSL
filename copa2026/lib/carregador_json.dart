import 'dart:convert';
import 'dart:io';

import 'logs.dart';



Future<List<Map<String, dynamic>>> carregarDadosCopa() async {


  try {


    File arquivo = File(
      'lib/dados_copa.json',
    );


    String conteudo = await arquivo.readAsString();


    List dados = jsonDecode(
      conteudo,
    );


    registrarLog(
      'Arquivo JSON carregado com sucesso',
    );


    return List<Map<String, dynamic>>.from(
      dados,
    );


  } catch (e) {


    registrarLog(
      'Erro ao carregar JSON: $e',
    );


    throw Exception(
      'Nao foi possivel carregar os dados da Copa',
    );


  }

}
