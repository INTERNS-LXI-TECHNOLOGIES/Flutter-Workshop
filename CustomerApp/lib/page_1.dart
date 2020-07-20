import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("haai"),
          //CircleAvatar(backgroundImage: AssetImage("assets/index.jpeg")),
          Image(image: AssetImage("assets/index."))
        ],
      ),
    );
  }
}
