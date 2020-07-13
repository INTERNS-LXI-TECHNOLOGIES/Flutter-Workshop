import 'package:flutter/material.dart';

class Multichildlayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
            child: Center(
              child: Text(" one "),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: Center(
              child: Text(" two "),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.yellow,
            child: Center(
              child: Text(" f "),
            ),
          ),
        ],
      ),
    );
  }
}
