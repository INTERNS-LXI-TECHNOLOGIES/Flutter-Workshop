import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/basicWidget.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basket",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text(
            "Basket",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.refresh), color: Colors.black, onPressed: null)
          ],
          backgroundColor: Colors.white,
        ),
        body: BasicWidget(),
      ),
    );
  }
}
