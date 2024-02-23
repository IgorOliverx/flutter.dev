import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  TextEditingController _controllerNumero1 = TextEditingController();

  TextEditingController _controllerNumero2 = TextEditingController();

  String _resultado = '';

  void _calcular(String operacao) {
    double numero1 = double.tryParse(_controllerNumero1.text) ?? 0.0;
    double? resultado;

    var numeroAleatorio = Random().nextInt(10) + 50;
    print(numeroAleatorio);

    setState(() {
      if (numero1 == numeroAleatorio) {
        print("parabens vc acertou");
      } else {
        print("tente novamente");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controllerNumero1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tente acertar o número'),
            ),
            SizedBox(height: 16.0),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => _calcular('Somar'),
              child: Text('Verificar'),
            ),
            SizedBox(height: 10.0),
            SizedBox(height: 16.0),
            Text(_resultado,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
