import 'package:flutter/material.dart';

const _customColor = Color.fromARGB(244, 84, 27, 207);

const List<Color> _colorthemes = [
  _customColor,
  Colors.black,
  Colors.blue,
  Colors.orange,
  Colors.pink,
  Colors.green,
  Colors.purple
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor < _colorthemes.length,
            'no te pases de lanza compa solo es el rango de 0 a ${_colorthemes.length - 1}');

  ThemeData theme() => ThemeData(
      colorSchemeSeed: _colorthemes[selectedColor],
      brightness: Brightness.light);
}
