import 'package:flutter/material.dart';
import 'package:lista_de_compras/ListaModel.dart';

class ListaController extends ChangeNotifier {
  //Lista de compras
  List<Lista> _lista = [];

  //Método especial acessor para acessar a lista de compras e manipular-la
  List<Lista> get lista => _lista;

  //Métodos CRUD

  //Método para adicionar o item da compra
  void adicionarItem(String descricao, BuildContext context) {
    //Verificação para ver se o produto já existe no array com any()
    if (_lista.any((item) => item.descricao == descricao)) {
      //Se ele já existir exibe um pop-ip que dura 1 segundo
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Compras"),
              content: Text("Item já existe"),
            );
          });
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
      });
    } else if (descricao.length < 1) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Aviso'),
            content: Text("Não é possível inserir um item vazio"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              )
            ],
          );
        },
      );
    } else {
      _lista.add(Lista(descricao, false));
      notifyListeners();
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Compras"),
              content: Text("Item adicionado"),
            );
          });
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
      });
    }
  }

//Método para marcar a compra como concluida
  void marcarComoConcluido(int indice) {
    if (indice >= 0 && indice < _lista.length) {
      _lista[indice].comprado = true;

      notifyListeners();
    }
  }

  // Método para desmarcar uma Compra como concluída com base no índice
  void desmarcarComoConcluido(int indice) {
    if (indice >= 0 && indice < _lista.length) {
      _lista[indice].comprado = false;
      // Notifica os ouvintes (widgets) sobre a mudança no estado
      notifyListeners();
    }
  }

  //Método para excluir uma compra
  void excluirCompra(int indice) {
    if (indice >= 0 && indice < _lista.length) {
      _lista.removeAt(indice);
      // Notifica os ouvintes (widgets) sobre a mudança no estado
      notifyListeners();
    }
  }

  //Método para atualizar o item da compra
  void atualizarCompra(int indice, String novaDescricao) {
    _lista[indice].descricao = novaDescricao;

    notifyListeners();
    
  }
}
