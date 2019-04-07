import 'package:cep/Endereco.dart';
import 'package:cep/componets/home/homeService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _cepController = new MaskedTextController(mask: '00000-000');
  Endereco _enderecoAtual = new Endereco();
  void _buscarCEP() {
    obterCEP(_cepController.text).then((response) {
      setState(() {
        _enderecoAtual = response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Busca de CEP"),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _cepController,
              decoration: InputDecoration(
                  labelText: "Digite o CEP",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(),
                  )),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: RaisedButton(
                child: Text("Buscar CEP"),
                elevation: 4.0,
                color: Colors.teal,
                splashColor: Colors.green,
                onPressed: _buscarCEP,
              ),
            ),
            Text(
              "Dados:",
              style: TextStyle(color: Colors.teal, fontSize: 15),
            ),
            Text("Logradouro: ${_enderecoAtual.logradouro}"),
            Text("Cidade: ${_enderecoAtual.localidade}"),
            Text("Bairro: ${_enderecoAtual.bairro}"),
            Text("UF: ${_enderecoAtual.uf}"),
            Text("IBGE: ${_enderecoAtual.ibge}"),
          ],
        ),
      )),
    );
  }
}
