import 'package:app_flutter/screens/ChatPage.dart';
import 'package:app_flutter/screens/Dashboard.dart';
import 'package:app_flutter/screens/FormularioCadastro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ChatPage(), // tela 1
    DashBoards(), // tela 2
    FormularioCadastro(), // tela 3
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Conversas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: 'Canais',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}





