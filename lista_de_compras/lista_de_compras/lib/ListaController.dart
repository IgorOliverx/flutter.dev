import 'package:flutter/material.dart';
import 'package:lista_de_compras/ListaModel.dart';

class ListaController extends ChangeNotifier {
  //Lista de compras
  List<Lista> _lista = [];

  //Método especial acessor para acessar a lista de compras e manipular-la
  List<Lista> get lista => _lista;

  bool _ordenar = true;

  //Ordenando a lista
  void ordenarLista() {
  _lista.sort((a, b) {
    final comparison = a.descricao.compareTo(b.descricao);
    return _ordenar ? comparison : -comparison;
  });
  _ordenar = !_ordenar; //inverte a ordem
  notifyListeners();
}

  void adicionarItem(String descricao, BuildContext context) {
  // Remover espaços em branco no início e no final da descrição
  String descricaoSemEspacos = descricao.trim();

  // Verificar se o produto já existe na lista usando a descrição sem espaços
  if (_lista.any((item) => item.descricao.trim() == descricaoSemEspacos)) {
    // Se ele já existir, exibir um pop-up que dura 1 segundo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Item duplicado"),
          content: Text("Item já existe"),
        );
      },
    );
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pop(context);
    });
  } else if (descricaoSemEspacos.isEmpty) {
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
    // Adicionar na lista





    _lista.add(Lista(descricaoSemEspacos, false));
    notifyListeners();





    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Compras"),
          content: Text("Item adicionado"),
        );
      },
    );
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
  void excluirCompra(int indice, BuildContext context) {
    if (indice >= 0 && indice < _lista.length) {
      _lista.removeAt(indice);
      // Notifica os ouvintes (widgets) sobre a mudança no estado
      notifyListeners();
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Atenção"),
              content: Text("Item excluído"),
            );
          });
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.pop(context);
      });
    }
  }

  //Método para atualizar o item da compra
  void atualizarCompra(int indice, String novaDescricao, BuildContext context) {
    if (_lista.any((item) => item.descricao == novaDescricao)) {
    } else if (novaDescricao.length < 1) {
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
      _lista[indice].descricao = novaDescricao;
      notifyListeners();
    }
  }
}
