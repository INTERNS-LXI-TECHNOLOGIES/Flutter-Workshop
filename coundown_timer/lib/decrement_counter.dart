import 'package:flutter/material.dart';

class DecrementCounter extends StatefulWidget {
  const DecrementCounter({Key? key}) : super(key: key);

  @override
  _DecrementCounterState createState() => _DecrementCounterState();
}

class _DecrementCounterState extends State<DecrementCounter> {
  int _counter = 2;

  void _decrementCounter() {
    setState(() {
      print(_counter);
      if (_counter < 0) {
        print(0);
      } else {
        _counter = _counter * 2 - _counter;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: _decrementCounter,
        child: Icon(Icons.remove),
      ),
    );
  }
}
