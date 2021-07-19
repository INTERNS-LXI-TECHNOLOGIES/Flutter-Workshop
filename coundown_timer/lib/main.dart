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
  double _counterValue = 0;
  int _numberOfTimesButtonpressed = 0;
  double _userInputValue = 0;
  final userInputController = TextEditingController();
  void _getIncrementValue() {
    setState(() {
      _numberOfTimesButtonpressed += 1;
      _counterValue *= _userInputValue;
    });
  } //incrementCounter

  void _getDecrementValue() {
    setState(() {
      if (_counterValue < 0 || _numberOfTimesButtonpressed <= 0) {
        _numberOfTimesButtonpressed = 0;
        _counterValue = 0;
        print(0);
      } else {
        _numberOfTimesButtonpressed -= 1;
        _counterValue /= _userInputValue;
      }
    });
  } //decrementCounter

  void _setUserInput() {
    setState(() {
      _numberOfTimesButtonpressed = 0;
      _userInputValue = double.parse(userInputController.text);
      _counterValue = 1;
    });
  } //elevated button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CountDown Timer'),
      ),
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
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            alignment: Alignment.topCenter,
            child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: userInputController,
                  keyboardType: TextInputType.number,
                  enabled: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffix: ElevatedButton(
                      onPressed: _setUserInput,
                      child: Text('GO'),
                    ),
                    hintText: 'Enter the Counter Value',
                  ),
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
            height: 1200,
            width: 400,
            margin: EdgeInsets.only(top: 100),
            alignment: Alignment.center,
            child: Text(
              '${_counterValue.toInt()}(' +
                  '${_userInputValue.toInt()}^$_numberOfTimesButtonpressed)',
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
