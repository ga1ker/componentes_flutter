import 'package:flutter/material.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 255, 2, 2);
  static const backColor = Color.fromARGB(255, 239, 190, 255);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color.fromARGB(255, 8, 0, 37),
        fontSize: 25.6,
        fontWeight: FontWeight.bold,
        fontFamily: 'sans-serif',
      ),
    ),
  );
}
