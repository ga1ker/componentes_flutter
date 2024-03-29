import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/screens/notifications_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
        title: Text(
          'Imágenes',
          style: AppTheme.lightTheme.textTheme.headline6,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageCard(),
            imageWeb(),
          ],
        ),
      ),
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

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            Image.asset(
              'assets/imgs/ga1ker.jpg',
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Logo de galker',
              ),
            )
          ],
        ),
      ),
    );
  }

  Stack imageWeb() {
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://img.asmedia.epimg.net/resizer/bCsmFOM_eeWCtG5tQ6XgzX-vVj4=/1472x828/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/53BQS3TQUJBVRJW6V6XQMU4CAU.jpg',
          ),
          // Image.network(
          // ), para arrastrar imagen de la web
        ),
      ],
    );
  }
}
