import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Exercicio 3')),
        body: ListView(
          children: [
            Card(
              color: Colors.amber,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("./assets/palmeiras-logo-3.png"),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}
