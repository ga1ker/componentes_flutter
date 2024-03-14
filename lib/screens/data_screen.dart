import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  final String text;
  final bool switchValue;
  final double sliderValue;
  final int radioValue;
  final List<bool> checkboxValues;

  const DataScreen({
    Key? key,
    required this.text,
    required this.switchValue,
    required this.sliderValue,
    required this.radioValue,
    required this.checkboxValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Guardados'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre: $text',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                '¿Te gusta flutter?: ${switchValue ? 'Si' : 'no'}',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                '1-10 ¿Qué tanto te gusta flutter?: $sliderValue',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Radio: $radioValue',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Emulador: ${checkboxValues[0]}',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Windows: ${checkboxValues[1]}',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Chrome: ${checkboxValues[2]}',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
