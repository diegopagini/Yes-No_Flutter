import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hello Love!', fromWho: FromWho.hers),
    Message(text: 'Are you at home?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {}
}
