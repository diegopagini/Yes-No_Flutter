import 'package:flutter/material.dart';

const Color _customColor =
    Color(0xFF5C11D4); // 0xFF before the hexadecimal number to make it work.

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.yellow,
  Colors.orange,
  Colors.red
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Color must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
