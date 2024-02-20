import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 255, 167, 230);
  static const backColor = Color.fromARGB(255, 176, 97, 255);
  static const negro = Color.fromARGB(255, 0, 0, 0);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.nunito(
        color: negro,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.aBeeZee(
        color: mainColor,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
