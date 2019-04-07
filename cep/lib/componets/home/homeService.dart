import 'dart:convert';

import 'package:cep/Endereco.dart';
import 'package:http/http.dart' as http;

Future<Endereco> obterCEP(String cep) async {
  final response = await http.get("https://viacep.com.br/ws/$cep/json/");
  var json = jsonDecode(response.body);
  var endereco = new Endereco();

  endereco.bairro = json['bairro'];
  endereco.cep = json['cep'];
  endereco.guia = json['guia'];
  endereco.ibge = json['ibge'];
  endereco.localidade = json['localidade'];
  endereco.logradouro = json['logradouro'];
  endereco.uf = json['uf'];
  endereco.unidade = json['unidade'];

  return endereco;
}
