import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Entradas'),
            subtitle: Text('Diferentes widgets para entradas de Flutter'),
            trailing: Icon(Icons.account_circle_outlined),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.list_alt_rounded),
            title: Text('ListView.builder'),
            subtitle: Text('Scroll infinito'),
            trailing: Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notification_add),
            title: Text(
              'Notificaciones',
            ),
            subtitle: Text('Creación de notificaciones'),
            trailing: Icon(Icons.screen_lock_portrait_sharp),
          ),
          Divider(),
        ],
      ),
    );
  }
}
