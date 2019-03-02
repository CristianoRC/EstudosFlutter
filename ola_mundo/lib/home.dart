import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int contador = 0;

  incrementar() {
    setState(() {
      contador++;
    });
  }

  decrementar() {
    setState(() {
      contador--;
    });
  }

  zerar() {
    setState(() {
      contador = 0;
    });
  }

  gerarValorRandomico() {
    var randomGenerator = new Random();
    var newRandomValue = randomGenerator.nextInt(99999);
    setState(() {
      contador = newRandomValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("@CristianoRC"),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Olá mundo: $contador vezes',
              style: TextStyle(
                  color: Colors.blueGrey, fontSize: 25, inherit: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: decrementar,
                  child: Icon(Icons.arrow_drop_down),
                ),
                RaisedButton(
                    onPressed: incrementar, child: Icon(Icons.arrow_drop_up))
              ],
            ),
            RaisedButton(
              onPressed: zerar,
              child: Icon(Icons.restore_from_trash),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: gerarValorRandomico,
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
