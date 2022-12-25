import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ReadExamples extends StatefulWidget {
  @override
  _ReadExamplesState createState() => _ReadExamplesState();
}

class _ReadExamplesState extends State<ReadExamples> {
  String _displayText = 'Measures';
  String temp = 'temp';
  final _database = FirebaseDatabase.instance.ref();
  @override
  void initState() {
    super.initState();
    _activateListener();
  }

  void _activateListener() {
    _database
        .child('UsersData/GNIC8yr94aQnkLMdmCRhHkblZsk1/readings')
        .onValue
        .listen((event) {
      final description = event.snapshot.value;
      setState(() {
        var type_ = description.runtimeType;
        // var temp = description.keys();
        _displayText = 'Temp and Moisture: $temp';
        // Map<dynamic, Map<dynamic, dynamic>> user =
        //     jsonDecode(description);
        // print(user);
        // // temp = user['1671913846'].toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text('Readings Examples'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Text(_displayText),
            ],
          ),
        ),
      ),
    );
  }
}
