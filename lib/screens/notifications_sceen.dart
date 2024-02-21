import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notificaciones',
          style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}
