import 'package:flutter/material.dart';
import 'package:rotas/widgets/about/aboutMe.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
              "https://cristianoprogramador.com/img/Cristiano(logo)%20Sem%20Texto.png",
              height: 200,
            ),
            Text(
              'Cristiano Raffi Cunha',
              style: TextStyle(color: Colors.blueGrey, fontSize: 25),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutMe()));
              },
              child: Text("Sobre"),
            )
          ],
        ),
      ),
    );
  }
}
