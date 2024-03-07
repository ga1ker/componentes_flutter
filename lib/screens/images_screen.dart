import 'package:flutter/material.dart';
import 'package:practica3_componentes/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imagenes',
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
