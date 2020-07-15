import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FloatingActionButton(
            child: Text("back"),
          ),
          Text("haai"),
        ],
      ),
    );
  }
}
