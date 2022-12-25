import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 60.0,
          ),
        ),
      ),
    );
  }
}
