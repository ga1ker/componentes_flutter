import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int selectedIndex = 0;
  List screens = const [
    HomeScreen(),
    InputsScreen(),
    NotificationsScreen(),
    NotificationsScreen()
  ];

  openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());
      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(
              builder: (context) => const NotificationsScreen());
          break;
        case 3:
          ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      }
      selectedIndex = index;
      print('selectedIndex = $selectedIndex');
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Notifications',
              style:
                  TextStyle(color: const Color.fromARGB(255, 196, 192, 192)))),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Color.fromARGB(255, 44, 43, 44),
        unselectedItemColor: const Color.fromARGB(255, 167, 164, 164),
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: AppTheme.negro),
              label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.input_rounded, color: AppTheme.negro),
              label: "Inputs"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined,
                  color: AppTheme.negro),
              label: "Notificaciones"),
          BottomNavigationBarItem(
              icon: Icon(Icons.image_outlined, color: AppTheme.negro),
              label: "Imagenes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app_outlined, color: AppTheme.negro),
              label: "Salida"),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),
    );
  }
}
