import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Settings',
          style: TextStyle(
            fontSize: 60.0,
          ),
        ),
      ),
    );
  }
}
