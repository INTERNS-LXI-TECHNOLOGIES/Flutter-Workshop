import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Checkout",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: null,
          ),
          title: Text(
            "Checkout",
          ),
          backgroundColor: Colors.blue[800],
        ),
      ),
    );
  }
}
