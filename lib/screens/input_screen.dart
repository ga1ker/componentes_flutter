import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3_componentes/screens/data_screen.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0;
  TextEditingController textController = TextEditingController();

  void openScreen(int index) {
    setState(() {
      switch (index) {
        case 0:
          selectedIndex = index;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
          break;
        case 1:
          selectedIndex = index;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const InfiniteListScreen()));
          break;
        case 2:
          selectedIndex = index;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NotificationsScreen()));
          break;
        case 3:
          selectedIndex = index;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ImagesScreen()));
          break;
        case 4:
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        case 5:
          selectedIndex = index;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DataScreen(
                        text: textController.text,
                        switchValue: valueSwitch,
                        sliderValue: valueSlider,
                        radioValue: selectedRadioOption,
                        checkboxValues: [isChecked1, isChecked2, isChecked3],
                      )));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Qué usas para correr tus apps en Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            entradasCheck(),
            ElevatedButton(
              onPressed: () {
                openScreen(
                    4); // Redirige a DataScreen al presionar el botón "Guardar"
              },
              child: const Text(
                'Guardar',
              ),
            ), // Mostrar datos ingresados
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.mainColor,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: AppTheme.negro),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: AppTheme.negro,
            ),
            label: "Lista",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add, color: AppTheme.negro),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image, color: AppTheme.negro),
            label: "Imagenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app, color: AppTheme.negro),
            label: "Salir",
          )
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.headlineMedium,
      ),
    );
  }

  TextField entradaTexto() {
    return TextField(
      controller: textController,
      style: AppTheme.lightTheme.textTheme.headlineMedium,
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
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
            value: valueSwitch,
            onChanged: (value) {
              setState(() {
                valueSwitch = value;
                print('Estado del switch: $valueSwitch');
              });
            }),
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
            min: 0,
            max: 10,
            value: valueSlider,
            divisions: 10,
            activeColor: AppTheme.accentColor,
            inactiveColor: AppTheme.mainColor,
            thumbColor: const Color.fromARGB(255, 46, 47, 102),
            label: '${valueSlider.round()}',
            onChanged: (value) {
              setState(() {
                valueSlider = value;
                print('Valor del slider: $valueSlider');
              });
            }),
      ],
    );
  }

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          '¿Qué prefieres usar para desarrollo móvil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.bodyMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value as int; // Cast a int
                  print('Opción seleccionada: $selectedRadioOption');
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.bodyMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value as int; // Cast a int
                  print('Opción seleccionada: $selectedRadioOption');
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Row entradasCheck() {
    return Row(
      children: [
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
              print('Valor de Navegador: $isChecked1');
            });
          },
        ),
        Text(
          'Windows',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked2,
          onChanged: (value) {
            setState(() {
              isChecked2 = value!;
              print('Valor de Navegador: $isChecked2');
            });
          },
        ),
        Text(
          'Chrome',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked3,
          onChanged: (value) {
            setState(() {
              isChecked3 = value!;
              print('Valor de Navegador: $isChecked3');
            });
          },
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InputsScreen(),
  ));
}
