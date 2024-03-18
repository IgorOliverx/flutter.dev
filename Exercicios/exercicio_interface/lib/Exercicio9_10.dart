import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabLayout(),
    );
  }
}

class TabLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Layout com Abas'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Aba 1'),
              Tab(text: 'Aba 2'),
              Tab(text: 'Aba 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AnimatedWidgetDemo(),
            Center(
              child: Text('Aba 2'),
            ),
            Center(
              child: Text('Aba 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedWidgetDemo extends StatefulWidget {
  @override
  _AnimatedWidgetDemoState createState() => _AnimatedWidgetDemoState();
}

class _AnimatedWidgetDemoState extends State<AnimatedWidgetDemo> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _color = _color == Colors.blue ? Colors.red : Colors.blue;
        });
      },
      child: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: 200,
          height: 200,
          color: _color,
          child: Center(
            child: Text(
              'Clique para mudar de cor',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
