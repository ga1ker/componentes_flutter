import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 255, 25, 132);
  static const backColor = Color.fromARGB(255, 255, 195, 158);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.nunito(
        color: mainColor,
        fontSize: 25.6,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
