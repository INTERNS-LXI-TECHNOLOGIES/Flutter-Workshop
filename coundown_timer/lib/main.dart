import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State {
  double _counterValue = 1;
  int? _userInput;

  void _getIncrementValue() {
    setState(() {
      _counterValue = _counterValue * 2;
    });
  }

  void _getDecrementValue() {
    setState(() {
      if (_counterValue < 0) {
        print(0);
      } else {
        _counterValue = _counterValue - (_counterValue / 2);
      }
    });

    void _getUserInput() {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(12),
            child: FloatingActionButton(
              onPressed: _getIncrementValue,
              child: Icon(Icons.add),
              elevation: 10,
              hoverColor: Colors.amber,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(12),
            child: FloatingActionButton(
              onPressed: _getDecrementValue,
              child: Icon(Icons.remove),
              elevation: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            child: TextField(
              keyboardType: TextInputType.number,
              enabled: false,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                suffix: ElevatedButton(
                  onPressed: () {
                    // _userInput=
                  },
                  child: Text('GO'),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text('Counter Value is '),
            ),
          ),
          Container(
            // color: Colors.black,
            height: 1200,
            width: 400,
            margin: EdgeInsets.only(top: 100),
            alignment: Alignment.center,
            child: Text(
              '${_counterValue.toInt()}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
