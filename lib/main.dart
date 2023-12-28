import 'package:flutter/material.dart';
import 'package:yes_no/config/theme/app_theme.dart';
import 'package:yes_no/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(), // To use a custom theme.
        title: 'Yes No',
        home: const ChatScreen());
  }
}
