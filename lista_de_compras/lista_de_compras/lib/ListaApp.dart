import 'package:flutter/material.dart';
import 'package:lista_de_compras/ListaController.dart';
import 'package:lista_de_compras/ListaView.dart';
import 'package:provider/provider.dart';

class ListaApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Definindo  a tela inicial para a aplicação
      home:ChangeNotifierProvider(
        create: (context) => ListaController(),
        child: ListaView(),
      ),    
    );
  }
}