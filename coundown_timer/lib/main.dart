import 'package:coundown_timer/startupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Countdown Timer'),
        ),
        body: StartUpScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
