import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime clockTime = DateTime.now();
    const duration = const Duration(seconds: 1);
    new Timer.periodic(
        duration,
        (Timer t) => setState(() {
              clockTime = DateTime.now();
            }));
    String ourTime = DateFormat('kk:mm:ss').format(clockTime);
    String dayTime = DateFormat('EEE d MMM').format(clockTime);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Clock"),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                ourTime,
                style: TextStyle(
                  color: Colors.amber,
                  fontFamily: 'Digital',
                  fontSize: 50.0,
                ),
              ),
            ),
            Container(
              child: Text(dayTime,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25.0,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
