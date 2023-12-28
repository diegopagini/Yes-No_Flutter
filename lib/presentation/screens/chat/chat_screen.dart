import 'package:flutter/material.dart';
import 'package:yes_no/presentation/widgets/chat/chat_view.dart';
import 'package:yes_no/presentation/widgets/shared/custom_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: ChatView(),
    );
  }
}
