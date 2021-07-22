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
  num _numberofTerms = 0;
  void _generateGeometricProgression() {
    setState(() {
      _initialTerm = num.parse(_initialTermController.text);
      _commonRatio = num.parse(_commonRatioController.text);
      _numberofTerms = num.parse(_numberOfTermsController.text);
      _gp = _initialTerm * (pow(_commonRatio, _numberofTerms));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CountDown Timer'),
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 400,
            margin: EdgeInsets.only(top: 10),
            child: Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                        hintText: 'Enter the Initial Value',
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
                        hintText: 'Enter The Common Difference',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: TextButton(
                      onPressed: _generateGeometricProgression,
                      child: Text('Generate AP'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 200),
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'Initial Value : $_initialTerm',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
                Container(
                  child: Text(
                    'Common Difference  Value : $_commonRatio',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
                Container(
                  child: Text(
                    'Number of Terms : $_numberofTerms',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
                Container(
                  child: Text(
                    'Generated GP Value',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 380),
            alignment: Alignment.center,
            child: Text(
              '$_gp',
              style: TextStyle(fontSize: 50, color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
