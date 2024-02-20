import 'package:flutter/material.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Componentes de flutter",
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Primer opción',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Diferentes widgets para entradas de flutter',
                style: Theme.of(context).textTheme.bodySmall),
            leading: const Icon(
              Icons.app_settings_alt,
              color: AppTheme.negro,
            ),
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
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          ListTile(
            leading: const Icon(
              Icons.admin_panel_settings_rounded,
              color: AppTheme.negro,
            ),
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Notificaciones',
                style: Theme.of(context).textTheme.bodySmall),
            trailing: const Icon(Icons.notification_add),
          )
        ],
      ),
    );
  }
}
