import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget {
  final String imageUrl;

  const ImageBubble({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // To get the size of the device.
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        height: 150,
        fit: BoxFit.cover,
        width: size.width * 0.7,
        loadingBuilder: (context, child, loadingProgress) {
          // Child is the image in this case. The child in line 13.
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('My love is sending an image...'),
          );
        },
      ),
    );
  }
}
