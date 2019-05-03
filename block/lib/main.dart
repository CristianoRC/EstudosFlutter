import 'package:block_teste/Home/homeWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Exemplos BLoC',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: HomeWidget());
  }
}
