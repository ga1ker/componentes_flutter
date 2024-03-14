import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/images_screen.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Componentes de flutter",
          style: AppTheme.lightTheme.textTheme.titleLarge,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Diferentes widgets para entradas de flutter',
                style: Theme.of(context).textTheme.bodySmall),
            leading: const Icon(
              Icons.app_settings_alt,
              color: AppTheme.negro,
            ),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context) {
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
            trailing: const Icon(Icons.input),
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          ListTile(
            leading: const Icon(Icons.list, color: AppTheme.negro),
            title: Text(
              'Lista Infinita',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Scroll infinito',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.input),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context) {
                return const InfiniteListScreen();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(
                Icons.notifications,
              ),
            ),
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Notificaciones',
                style: Theme.of(context).textTheme.bodySmall),
            trailing: const Icon(Icons.input),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: Icon(Icons.image),
            ),
            title: Text(
              'Imágenes',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Manejo de imagenes',
                style: Theme.of(context).textTheme.bodySmall),
            trailing: const Icon(Icons.input),
            onTap: () {
              final ruta4 = MaterialPageRoute(builder: (context) {
                return const ImagesScreen();
              });
              Navigator.push(context, ruta4);
            },
          )
        ],
      ),
    );
  }
}
