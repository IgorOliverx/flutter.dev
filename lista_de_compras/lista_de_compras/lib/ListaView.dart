import 'package:lista_de_compras/ListaController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListaView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de compras'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Nova Compra',
                suffixIcon: IconButton(
                  onPressed: () {
                    Provider.of<ListaController>(context, listen: false)
                        .adicionarItem(_controller.text, context);
                    //Limpar o campo de texto após adicionar tarefa
                    _controller.clear();
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ),
          ),
          Expanded(
            child: Consumer<ListaController>(
              builder: (context, model, child) {
                return ListView.builder(
                  itemCount: model.lista.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(model.lista[index].descricao),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              _mostrarDialogoEdicao(context, model, index);
                            },
                          ),
                          Checkbox(
                            value: model.lista[index].comprado,
                            onChanged: (value) {
                              if (value != null) {
                                if (value) {
                                  model.marcarComoConcluido(index);
                                } else {
                                  model.desmarcarComoConcluido(index);
                                }
                              }
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              model.excluirCompra(index);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white70,
    );
  }

  _mostrarDialogoEdicao(
      BuildContext context, ListaController model, int index) {
    TextEditingController _controller =
        TextEditingController(text: model.lista[index].descricao);

//Em processo de desenvolvimento para passar isso para o controller
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Compra'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Nova descrição',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                model.atualizarCompra(index, _controller.text);
                Navigator.of(context).pop();
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}
