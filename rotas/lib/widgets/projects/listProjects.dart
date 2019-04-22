import 'package:flutter/material.dart';

class ListProject extends StatefulWidget {
  @override
  _ListProjectState createState() => _ListProjectState();
}

class _ListProjectState extends State<ListProject> {
  List<Widget> GetProjects() {
    var projects = new List<Widget>();
    for (var i = 0; i < 150; i++) {
      projects.add(Text("$i", style: TextStyle(fontSize: 25)));
    }
    return projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Projetos"),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 25),
        children: <Widget>[
          ListTile(title: Text("Meus projetos")),
          ListBody(
            children: GetProjects(),
          )
        ],
      ),
    );
  }
}
