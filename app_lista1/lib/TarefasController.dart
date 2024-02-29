import 'package:app_lista1/TarefaModel.dart';
import 'package:flutter/material.dart';

// Esta classe é um controlador para gerenciar a lógica relacionada às tarefas.
class ListaTarefasController extends ChangeNotifier {
  // Lista privada (_tarefas) para armazenar as tarefas.
  List<Tarefa> _tarefas = [];

  // Getter para obter a lista de tarefas.
  List<Tarefa> get tarefas => _tarefas;

  //Métodos CRUD
  void adicionarTarefa(String descricao) {
    // Cria uma nova instância de Tarefa com a descrição fornecida e inicialmente não concluída.

    if (descricao.length <= 1) {
      print("Não é possível inserir a tarefa sem descrição");
    }
    _tarefas.add(Tarefa(descricao, false));

    // Notifica os ouvintes (como widgets que dependem desses dados) sobre a mudança.
    notifyListeners();
  }

  void marcarComoConcluida(int indice) {
    // Verifica se o índice está dentro dos limites da lista de tarefas.
    if (indice >= 0 && indice < _tarefas.length) {
      // Marca a tarefa como concluída.
      _tarefas[indice].concluida = true;
      notifyListeners();
    }
  }

    void excluirTarefas(int indice) {
      if (indice >= 0 && indice < _tarefas.length) {
        //Método de um array para apagar o elemento pelo índice
        _tarefas.removeAt(indice);
        notifyListeners();
      }
    }
  }

