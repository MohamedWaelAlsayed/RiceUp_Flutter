import 'dart:convert';
import 'dart:math';
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
    FirebaseDatabase.instance.setPersistenceEnabled(true);
    _activateListener();
  }

  void _activateListener() {
    _database
        .child('UsersData/GNIC8yr94aQnkLMdmCRhHkblZsk1/readings')
        .onValue
        .listen((event) {
      final  description = event.snapshot.value as Map ;
      setState(() {
        // var type_ = description.runtimeType;
        var noOfReadings = description.keys.length;
        double averageTemperature = 0;
        double average_humidity = 0;

        description.keys.forEach((element) { averageTemperature += double.parse(description[element]["temperature"]);});
        description.keys.forEach((element) { average_humidity += double.parse(description[element]["humidity"]);});

        // var temp = description.keys as List<String>;
        // for (String key in temp) {
        //   // average_temperature += description[key]["temperature"];
        //   print(description[key]["temperature"]);
        // }
        averageTemperature = averageTemperature/noOfReadings;
        average_humidity = average_humidity / noOfReadings;
        var sortedTimestamp = description.keys.toList();
        sortedTimestamp.sort();
        print(sortedTimestamp);
        var lastTemp = description[sortedTimestamp.last]["temperature"];
        var lastHumidity = description[sortedTimestamp.last]["humidity"];
        var timestamp = sortedTimestamp.last;
        final DateTime date1 = DateTime.fromMillisecondsSinceEpoch
          (int.parse(timestamp)*1000);
        _displayText = 'Number of reading: $noOfReadings\n\n' 'last Temp:'
            ' $lastTemp °C\n\n last Moisture: $lastHumidity %' '\n\n time: '
            '$date1\n\n timestamp: $timestamp ';
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