import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/presentation/widgets/chat/image_bubble.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;

  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    // To get the theme from my custom theme in the seed.
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: colors.secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const ImageBubble(),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
