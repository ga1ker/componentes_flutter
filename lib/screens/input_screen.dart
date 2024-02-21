import 'package:flutter/material.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Entradas',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text(
                'regresar',
                style: AppTheme.lightTheme.textTheme.bodyMedium,
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'regresar a DataScreen',
                style: AppTheme.lightTheme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
