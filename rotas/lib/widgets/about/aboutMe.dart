import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sobre"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Cristiano Raffi Cunha",
                style: TextStyle(color: Colors.blueGrey, fontSize: 25),
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  "Olá, meu nome é Cristiano, 20 anos, desenvolvedor .NET. Apaixonado por desenvolvimento de software, educação e o mundo open source.",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              RaisedButton(
                onPressed: () async {
                  await launch("https://cristianoprogramador.com");
                },
                child: Text(
                  "Site Pessoal",
                  style: TextStyle(fontSize: 20),
                ),
                elevation: 5,
              )
            ],
          ),
        ));
  }
}
