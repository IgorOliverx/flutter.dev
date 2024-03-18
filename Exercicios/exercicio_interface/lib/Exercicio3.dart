import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Exercicio 3')),
        body: ListView(
          children: [
            Card(
              color: Colors.white12,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
              Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Palmeiras.'),
                  subtitle: Text(
                    'Palestra Itália',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Maior campeão do Brasil',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              
                Image.asset('assets/palmeiras-logo-3.png', width: 200, height: 200),
              ],
            ),
          ),
          Divider(),
             Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
            
            Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
            Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 108,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                      radius: 100,
                    ), //CircleAvatar
                  ), //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Palestra Itália',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  const Text(
                    'Palmeiras',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 100,
 
                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const [
                            Icon(Icons.touch_app),
                            Text('Avanti')
                          ],
                        ),
                      ),
                    ),
                    // RaisedButton is deprecated and should not be used
                    // Use ElevatedButton instead
 
                    // child: RaisedButton(
                    //   onPressed: () => null,
                    //   color: Colors.green,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(4.0),
                    //     child: Row(
                    //       children: const [
                    //         Icon(Icons.touch_app),
                    //         Text('Visit'),
                    //       ],
                    //     ), //Row
                    //   ), //Padding
                    // ), //RaisedButton
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
             Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
            Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
             Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
            Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
             Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
            Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
             Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/palmeiras-logo-3.png", width: 200, height: 200,),
                    Divider(),
                    Text('Palmeiras - Campeão Brasileiro')
                  ],
                ),
              ),
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}
