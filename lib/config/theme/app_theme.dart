import 'package:flutter/material.dart';

class AppTheme{
  final int selectedColor;

  static final List<Color> _colorThemes = [
    const Color(0xFFA4FA10),
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.red,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.amber,
  ];

  AppTheme({this.selectedColor = 0}) 
  : assert(selectedColor >= 0 && selectedColor <= AppTheme._colorThemes.length, 'Colors must be between 0 and ${AppTheme._colorThemes.length - 1}');

  ThemeData theme(){
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }

}