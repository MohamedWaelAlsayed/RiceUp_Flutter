import 'package:flutter/material.dart';
import 'package:project1/Screens/read_examples.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[900],
          title: Text('Dashboard'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Check Out Sensors'),
              SizedBox(
                height: 6,
                width: MediaQuery.of(context).size.width,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadExamples(),
                    ),
                  );
                },
                child: Text('Readings'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen[900],
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
            ],
          ),
        ));
  }
}
