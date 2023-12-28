import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/config/theme/app_theme.dart';
import 'package:yes_no/presentation/providers/chat_provider.dart';
import 'package:yes_no/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // To use a state in the entire app.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatProvider()),
        // With this all the childrens will have access to this providers
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 1).theme(), // To use a custom theme.
          title: 'Yes No',
          home: const ChatScreen()),
    );
  }
}
