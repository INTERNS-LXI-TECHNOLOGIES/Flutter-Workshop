import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home(),
  ));
}
  class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      title: Text("hi there"),
  backgroundColor: Colors.orange,
  centerTitle: true,
  ),
  body: Center(
    child: Image.asset('assests/robocop.jpg'),
  ),
  backgroundColor: Colors.white60,
  floatingActionButton: FloatingActionButton(
  child: Text("click m"),

  )
  );
    }
}

  

