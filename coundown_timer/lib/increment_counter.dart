import 'package:flutter/material.dart';

class IncrementCounter extends StatefulWidget {
  const IncrementCounter({Key? key}) : super(key: key);

  @override
  _IncrementCounterState createState() => _IncrementCounterState();
}

class _IncrementCounterState extends State<IncrementCounter> {
  int _counter = 2;

  void _incrementCounter(context) {
    setState(() {
      print(_counter);
      _counter = _counter * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 740,
      child: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
