import 'package:flutter/material.dart';
import 'package:yes_no/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(), // To use a custom theme.
      title: 'Yes No',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yes-No'),
        ),
        body: Center(
          child:
              FilledButton.tonal(onPressed: () {}, child: const Text('Click')),
        ),
      ),
    );
  }
}
