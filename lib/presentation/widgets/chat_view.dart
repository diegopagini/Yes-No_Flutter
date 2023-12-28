import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // "SafeArea" To leave space for dedault mobile behaviors on top and bottom.
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                // To fill all the view;
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Text('Index: $index');
              },
            )),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
