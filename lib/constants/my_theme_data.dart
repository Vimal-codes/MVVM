import 'package:flutter/material.dart';

class MyThemeData {
  ///for light mode
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1),
      colorScheme:
          ColorScheme.light(surface: Color.fromARGB(26, 13, 184, 247)));
  ///for dark mod
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[800],
          foregroundColor: Colors.white,
          elevation: 1),
      colorScheme:
      ColorScheme.dark(/*primary Colors.teal*/));
}
