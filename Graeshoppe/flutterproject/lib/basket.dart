import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basket",
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text("Basket"),
          ),
        ),
      ),
    );
  }
}
