import 'package:app_carro/Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class TelaListaCarro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEUS CARROS KUNG FU'),
      ),
      // Corpo principal do aplicativo
      body: Column(
        children: [
          //Lista os Carros da Lista
          Consumer<CarroControler>(
            builder: (context, model, child) {
              return ListView.builder(
                itemCount: model.listarCarros.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    // Exibe os Carros Listados no Controller
                    title: Text(model.listarCarros[index].modelo),
                    //quando clicado o carro vai abrir a telaDescricaoCarro
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TelaDetalheCarro(model.listarCarros[index]),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: showDialog(builder: ),
      // ),
     );
  }
}

class TelaDetalheCarro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
