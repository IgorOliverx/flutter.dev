import 'package:app_flutter/models/ChatUsersModel.dart';
import 'package:app_flutter/widgets/conversationList.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
    ChatUsers(
        name: "Eduardo Ananias",
        messageText: "Como você tá mano?",
        imageUrl: "images/userImage1.jpg",
        time: "Agora"),
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
        child: ListView()),
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
