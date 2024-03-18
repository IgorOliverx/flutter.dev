import 'package:exercicio_interface/Exercicio1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//Jeito simples de criar um app em Flutter
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const titulo = "Formulário de cadastro";

    return MaterialApp(
      title: titulo,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(titulo),
        ),
        body: const Formulario(),
      ),
    );
  }
}

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  FormularioEstado createState() {
    return FormularioEstado();
  }
}

class FormularioEstado extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Email"),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Não é possível enviar o formulário vazio";
              }
              return null;
            },
          ),
          Text("Senha"),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Não é possível enviar o formulário vazio";
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Enviar'),
            ),
          ),
        ],
      ),
    );
  }
}
