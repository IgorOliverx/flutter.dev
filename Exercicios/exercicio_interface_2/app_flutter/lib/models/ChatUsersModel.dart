import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatUsers {
  String name;
  String messageText;
  String imageUrl;
  String time;
  ChatUsers(
      {
        required this.name,
        required this.messageText,
        required this.imageUrl,
        required this.time
        }
      );
}
