import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/presentation/providers/chat_provider.dart';
import 'package:yes_no/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no/presentation/widgets/shared/message_field_box.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // With the watch method the context will be waiting for the "notifyListeners" method to be updated.
    final chatProvider = context.watch<ChatProvider>();

    // "SafeArea" To leave space for dedault mobile behaviors on top and bottom.
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // To fill all the view;
            Expanded(
                // To make the for.
                child: ListView.builder(
              controller: chatProvider
                  .chatScrollController, // This controller comes from my provider.
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];

                return (message.fromWho == FromWho.hers)
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble(message: message);
              },
            )),
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            ),
            // The short way of doing this is this one:
            // MessageFieldBox(
            //   onValue: chatProvider.sendMessage,
            // ),
          ],
        ),
      ),
    );
  }
}
