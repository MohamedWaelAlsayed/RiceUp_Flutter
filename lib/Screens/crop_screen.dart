import 'package:flutter/material.dart';

class CropScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text('Crop'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Crop',
          style: TextStyle(
            fontSize: 60.0,
          ),
        ),
      ),
    );
  }
}
