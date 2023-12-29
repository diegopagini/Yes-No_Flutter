import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [];

  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);
    // To notify the provider that something has changed.
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
