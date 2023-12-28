import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final ColorScheme colors = Theme.of(context).colorScheme;

    final UnderlineInputBorder outlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(20));

    final InputDecoration inputDecoration = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            // print('button: $textValue');
            textController.clear();
          },
        ));

    return TextFormField(
      controller: textController,
      decoration: inputDecoration,
      focusNode: focusNode,
      keyboardType: TextInputType.text,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        // print('value changed: $value');
      },
      onTapOutside: (event) {
        focusNode.unfocus();
      },
    );
  }
}
