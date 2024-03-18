import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Informações Pessoais'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonInfoRow(icon: Icons.person, label: 'Nome:', value: 'João da Silva'),
            PersonInfoRow(icon: Icons.cake, label: 'Idade:', value: '25 anos'),
            PersonInfoRow(icon: Icons.location_on, label: 'Endereço:', value: 'Rua Principal, 123'),
            PersonInfoRow(icon: Icons.phone, label: 'Telefone:', value: '(123) 456-7890'),
            PersonInfoRow(icon: Icons.email, label: 'E-mail:', value: 'joao@example.com'),
          ],
        ),
      ),
    );
  }
}

class PersonInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const PersonInfoRow({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(value),
            ],
          ),
        ],
      ),
    );
  }
}
