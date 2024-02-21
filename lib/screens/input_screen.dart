import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Entradas',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
