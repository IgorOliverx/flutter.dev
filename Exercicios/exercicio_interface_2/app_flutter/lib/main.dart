import 'package:app_flutter/screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}


