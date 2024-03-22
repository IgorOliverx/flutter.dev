import 'dart:html';
import 'dart:io';

import 'package:app_flutter/models/ChatUsersModel.dart';
import 'package:app_flutter/widgets/conversationList.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() =>
      _ChatPageState(); //Criando estado para poder armazenar o array de mensagens
}

//Criando uma classe privada para armazenar o array das mensagens(as mensagens são estáticas)
class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você está, colega?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Alexandre Savarino",
        messageText: "HAHAHAH, boa!!",
        imageUrl: "images/userImage2.jpg",
        time: "Há 2 min."),
    ChatUsers(
        name: "Elizabeth Maeve",
        messageText: "Até logo!",
        imageUrl: "images/userImage9.jpg",
        time: "Há 7 min."),
    ChatUsers(
        name: "Raphael Veiga",
        messageText: "Avanti, Palestra!",
        imageUrl: "images/userImage4.jpg",
        time: "Há 2 hrs."),
    ChatUsers(
        name: "Eduard Franc.",
        messageText: "Reunião de negócios, ama...",
        imageUrl: "images/userImage5.jpg",
        time: "Há 9 hrs."),
    ChatUsers(
        name: "Francisco Corrêa",
        messageText: "Consegue aceitar o PR?",
        imageUrl: "images/userImage6.jpg",
        time: "Há 1 dia."),
    ChatUsers(
        name: "Stella Liz",
        messageText: "Palmeirass! Campeões!",
        imageUrl: "images/userImage7.jpg",
        time: "Há 2 dias."),
    ChatUsers(
        name: "Pedro Henrique",
        messageText: "E o Palmeiras, venceu hoje!",
        imageUrl: "images/userImage8.jpg",
        time: "Há 2 dias."),
    ChatUsers(
        name: "+55 (11) 98745-3362",
        messageText: "Como você está?",
        imageUrl: "images/userImage3.jpg",
        time: "Há 2 dias."),
    ChatUsers(
        name: "Annie Hasbor",
        messageText: "Você tem lição a ser entregue!",
        imageUrl: "images/userImage10.jpg",
        time: "Há 2 dias."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'Igor Oliveira',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                '',
                style: TextStyle(color: Colors.black),
              ),
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Chats Principais',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.favorite),
                ),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/userImage9.jpg"),
              ),
              title: Text('Elizabeth Maeve',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                'Mensagens Frequentes',
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/userImage1.jpg")
              ),
              title: Text(
                'Eduardo Ananias',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Mensagens Recentes'),
            ),
            Divider(
              color: Colors.black54,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversas",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Novo Chat",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Pesquisar...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageUrl,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
