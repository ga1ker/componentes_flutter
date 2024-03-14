import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromRGBO(175, 210, 255, 1);
  static const backColor = Color.fromARGB(255, 100, 255, 247);
  static const accentColor = Color.fromARGB(255, 255, 255, 255);
  static const negro = Color.fromARGB(255, 0, 0, 0);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: backColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          accentColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          accentColor,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.nunito(fontSize: 17.0),
        ),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.nunito(),
      titleMedium: GoogleFonts.nunito(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: GoogleFonts.nunito(
        color: negro,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.aBeeZee(
        color: negro,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.nunito(
        color: negro,
      ),
    ),
  );
}
