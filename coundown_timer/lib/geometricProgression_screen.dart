import 'package:flutter/material.dart';
import 'dart:math';

class GeometricProgression extends StatefulWidget {
  _GeometricProgressionState createState() => _GeometricProgressionState();
}

class _GeometricProgressionState extends State {
  final _initialTermController = TextEditingController();
  final _commonRatioController = TextEditingController();
  final _numberOfTermsController = TextEditingController();
  num _gp = 0;
  num _initialTerm = 0;
  num _commonRatio = 0;
  num _numberOfTerms = 0;
  void _generateGeometricProgression() {
    setState(() {
      _initialTerm = num.parse(_initialTermController.text);
      _commonRatio = num.parse(_commonRatioController.text);
      _numberOfTerms = num.parse(_numberOfTermsController.text);
      _gp = _initialTerm * (pow(_commonRatio, _numberOfTerms));
    });
  }

  void _incrementGP() {
    setState(() {
      _gp *= _commonRatio;
    });
  }

  void _decrementGP() {
    setState(() {
      _gp /= _commonRatio;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CountDown Timer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _initialTermController,
                        keyboardType: TextInputType.number,
                        enabled: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Enter The Initial Term',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _numberOfTermsController,
                        keyboardType: TextInputType.number,
                        enabled: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Enter The Number of Terms',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _commonRatioController,
                        keyboardType: TextInputType.number,
                        enabled: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Enter the Common Ratio',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: TextButton(
                        onPressed: _generateGeometricProgression,
                        child: Text('Generate GP'),
                      ),
                    )
                  ],
                ),
              ),
              elevation: 10,
            ),
            Container(
              height: 330,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'First Value : $_initialTerm',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Number of Terms : $_numberOfTerms',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Common Difference : $_commonRatio',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Generated AP :',
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    child: Text(
                      '${_gp.toInt()}',
                      style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 15),
                        alignment: Alignment.bottomLeft,
                        child: FloatingActionButton(
                          onPressed: _decrementGP,
                          child: Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 15),
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: _incrementGP,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
