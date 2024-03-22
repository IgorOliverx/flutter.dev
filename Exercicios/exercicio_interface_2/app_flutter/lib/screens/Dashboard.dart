import 'package:flutter/material.dart';


class DashBoards extends StatefulWidget {
  @override
  _DashBoardsState createState() => _DashBoardsState();
}

class _DashBoardsState extends State<DashBoards> {
  double _valorProgresso = 0.0;

  void _atualizarProgresso() {
    setState(() {
      if (_valorProgresso < 1.0) {
        _valorProgresso += 0.1;
      } else {
        _valorProgresso = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Progresso Dinâmica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Progresso: ${(100 * _valorProgresso).toStringAsFixed(0)}%',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            LinearProgressIndicator(
              value: _valorProgresso,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _atualizarProgresso,
              child: Text('Atualizar Progresso'),
            ),
          ],
        ),
      ),
    );
  }
}
