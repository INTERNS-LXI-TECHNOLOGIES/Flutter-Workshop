import 'package:flutter/material.dart';
import 'dart:math';

class GeometricProgression extends StatefulWidget {
  _GeometricProgressionState createState() => _GeometricProgressionState();
}

class _GeometricProgressionState extends State {
  final _initialTermController = TextEditingController();
  final _commonRatioController = TextEditingController();
  final _numberOfTermsController = TextEditingController();
  num _maxGP = 0;
  num _gp = 0;
  num _initialTerm = 0;
  num _commonRatio = 0;
  num _numberOfTerms = 0;

  void _generateGeometricProgression() {
    setState(() {
      _initialTerm = num.parse(_initialTermController.text);
      _commonRatio = num.parse(_commonRatioController.text);
      _numberOfTerms = num.parse(_numberOfTermsController.text);
      if (_initialTerm <= 0 || _commonRatio <= 0 || _numberOfTerms <= 0) {
        return;
      }
      _gp = _initialTerm * (pow(_commonRatio, _numberOfTerms));
      _maxGP = _gp;
      _initialTermController.clear();
      _commonRatioController.clear();
      _numberOfTermsController.clear();
    });
  }

  void _incrementGP() {
    setState(() {
      var _maxValue = _maxGP;
      if (_gp >= _maxValue) {
        _gp = _maxValue;
      } else {
        _gp *= _commonRatio;
      }
    });
  }

  void _decrementGP() {
    setState(() {
      if (_gp <= _initialTerm) {
        _gp = _initialTerm;
      } else {
        _gp /= _commonRatio;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
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
                          // onSubmitted: (_) => _generateGeometricProgression(),
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
                          // onSubmitted: (_) => _generateGeometricProgression(),
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
                          // onSubmitted: (_) => _generateGeometricProgression(),
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
                        'Common Ratio : $_commonRatio',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Generated GP :',
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
      ),
    );
  }
}
