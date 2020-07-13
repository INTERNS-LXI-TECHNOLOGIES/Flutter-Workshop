import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/multichildlayout.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basket",
      home: Scaffold(
        body: Center(child: Multichildlayout()),
      ),
    );
  }
}
