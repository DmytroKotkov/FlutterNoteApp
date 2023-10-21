import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    // Опис світлої теми
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    // Інші налаштування теми
  );

  static final darkTheme = ThemeData(
    // Опис темної теми
    primarySwatch: Colors.indigo,
    brightness: Brightness.dark,
    // Інші налаштування теми
  );
}
