import 'package:flutter/material.dart';
import 'home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 159, 247, 159),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 20, 165, 39)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 8, 0, 37),
            fontSize: 25.6,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          ),
        ),
      ),
    );
  }
}
