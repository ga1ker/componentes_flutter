import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/notifications_sceen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false; // Inicia apagado
  bool isChecked2 = false; // Inicia apagado
  bool isChecked3 = false; // Inicia apagado
  double valueSlider = 0.0; // Inicia en 0
  int selectedIndex = 0;
  int selectedRadio = 0;
  List screens = const [
    HomeScreen(),
    NotificationsScreen(),
    ImagesScreen(),
  ];

  openScreen(int index, BuildContext context) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());
      MaterialPageRoute ruta1 =
          MaterialPageRoute(builder: (context) => const NotificationsScreen());
      MaterialPageRoute ruta2 =
          MaterialPageRoute(builder: (context) => const ImagesScreen());

      switch (index) {
        case 0:
          ruta = MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
          break;
        case 1:
          ruta1 = MaterialPageRoute(
              builder: (context) => const NotificationsScreen());
          break;
        case 2:
          ruta2 = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      }
      selectedIndex = index;
      Navigator.push(context, ruta);
      Navigator.push(context, ruta1);
      Navigator.push(context, ruta2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Entradas',
        style: TextStyle(color: const Color.fromARGB(255, 196, 192, 192)),
      )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(context),
            entradaSwitch(),
            entradaSlider(),
            entradaRadio(),
            Text('¿qué prefieres en checklist?'),
            entradaCheck(),
            const ElevatedButton(
              onPressed: null,
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Color.fromARGB(255, 180, 167, 197),
        onTap: (index) => openScreen(index, context),
        items: const [
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.video_camera_back_outlined, color: AppTheme.negro),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined,
                  color: AppTheme.negro),
              label: "Notificaciones"),
          BottomNavigationBarItem(
              icon: Icon(Icons.image, color: AppTheme.negro),
              label: "Imagenes"),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
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

  Column entradaSwitch() {
    return Column(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Si o no?',
          style: AppTheme.lightTheme.textTheme.bodyLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
              // print('Estado del switch: $valueSwitch'); // Imprime en consola el estado del switch
            });
          },
        ),
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          'Guapo de 1 a 10',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider,
          activeColor: AppTheme.mainColor,
          inactiveColor: AppTheme.accentColor,
          thumbColor: Colors.purple,
          divisions: 10,
          label: '${valueSlider.round()}',
          onChanged: (value) {
            setState(() {
              valueSlider = value;
              // print('Estado del slider: $valueSlider'); // Imprime en consola el estado del Slider
            });
          },
        ),
      ],
    );
  }

  Column entradaRadio() {
    return Column(
      children: [
        Text(
          '¿qué prefieres?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.bodyMedium,
          ),
          leading: Radio(
            value: 1,
            groupValue: selectedRadio,
            onChanged: (value) {
              setState(() {
                selectedRadio = value!;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.bodyMedium,
          ),
          leading: Radio(
            value: 2,
            groupValue: selectedRadio,
            onChanged: (value) {
              setState(
                () {
                  selectedRadio = value!;
                  print('opcion: $selectedRadio');
                },
              );
            },
          ),
        )
      ],
    );
  }

  Column entradaCheck() {
    return Column(
      children: [
        Text(
          'Web',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
        Checkbox(
          value: isChecked1,
          onChanged: (value) {
            setState(
              () {
                isChecked1 = value!;
                print('cheked web: $isChecked1');
              },
            );
          },
        ),
        Text(
          'Windows',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
        Checkbox(
            value: isChecked2,
            onChanged: (value) {
              setState(() {
                isChecked2 = value!;
                print('cheked windows: $isChecked2');
              });
            })
      ],
    );
  }
}
