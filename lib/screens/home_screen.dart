import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/infinite_list_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/screens/notifications_sceen.dart';
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
            trailing: const Icon(Icons.arrow_right),
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          ListTile(
            leading: const Icon(Icons.add_location, color: AppTheme.negro),
            title: Text(
              'Scrooooooll',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Scroll infinito',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.list_alt_rounded),
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
                Icons.notification_add,
              ),
            ),
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Notificaciones',
                style: Theme.of(context).textTheme.bodySmall),
            trailing: const Icon(Icons.notification_add),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
          )
        ],
      ),
    );
  }
}
