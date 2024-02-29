import 'package:flutter/material.dart';
import 'package:app_animais/Controller.dart';
import 'package:app_animais/View.dart';
import 'package:provider/provider.dart';

class AnimaisApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Definindo  a tela inicial para a aplicação
      home:ChangeNotifierProvider(
        create: (context) => AnimalController(),
        child: TelaListaAnimais(),
      ),    
    );
  }
}