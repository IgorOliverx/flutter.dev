import 'package:exercicio_interface/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercício 1"),
        ),
        body: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("Container 1"),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.white,
              alignment: Alignment.center,
              child: Text("Container 2"),
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text("Container 3"),
            ),
          ],
        ),
      ),
    );
  }
}
