import 'package:flutter/material.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false; // Inicia apagado
  double valueSlider = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Entradas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          entradaTexto(context),
          entradaSwitch(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text('Regresar'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Ir a Data Screen'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextField entradaTexto(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre: ',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        Text(
          '¿te gusta flutter?',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 20.0,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
            });
          },
        ),
      ],
    );
  }
}

Column entradaSlider() {
  return Column(
    children: <Widget>[
      Text(
        '¿qué tento te gusta florer?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    ],
  );
}
