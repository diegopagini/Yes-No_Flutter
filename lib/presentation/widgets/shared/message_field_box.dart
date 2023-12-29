import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({super.key, required this.onValue});

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

            // This is the method that I'm receiving by input.
            onValue(textValue);
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
        onValue(value);
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
