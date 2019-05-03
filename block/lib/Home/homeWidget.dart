import 'package:block_teste/Home/homeBloc.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = new HomeBloc();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: bloc.decrement,
            icon: Icon(Icons.minimize),
          )
        ],
      ),
      body: Center(
        child: StreamBuilder(
            stream: bloc.stream,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Text("Contador: ${snapshot.data}");
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: bloc.increment,
      ),
    );
  }
}
