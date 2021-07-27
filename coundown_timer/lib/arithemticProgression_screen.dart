import 'package:flutter/material.dart';

class ArithematicProgression extends StatefulWidget {
  _ArithematicProgressionState createState() => _ArithematicProgressionState();
}

class _ArithematicProgressionState extends State {
  final _commonDifferenceController = TextEditingController();
  final _firstTermController = TextEditingController();
  final _numberofTermsController = TextEditingController();
  num _ap = 0;
  num _firstTerm = 0;
  num _commonDifference = 0;
  num _generatedAP = 0;
  num _numberOfTerms = 0;
  num _nthTerm = 0;
  void _generateArithematicProgression() {
    setState(() {
      _firstTerm = num.parse(_firstTermController.text);
      _commonDifference = num.parse(_commonDifferenceController.text);
      _numberOfTerms = num.parse(_numberofTermsController.text);
      _nthTerm = _numberOfTerms;
      _generatedAP = _firstTerm + ((_numberOfTerms - 1) * _commonDifference);
      _ap = _generatedAP;
    });
  }

  void _incrementAP() {
    setState(() {
      var _maxVlaue = _ap;
      if (_generatedAP >= _maxVlaue) {
        _generatedAP = _maxVlaue;
        _nthTerm = _numberOfTerms;
      } else {
        _generatedAP += _commonDifference;
        _nthTerm++;
      }
    });
  }

  void _decrementAP() {
    setState(() {
      if (_generatedAP <= _firstTerm) {
        _generatedAP = _firstTerm;
        _nthTerm = 1;
      } else {
        _generatedAP -= _commonDifference;
        _nthTerm--;
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
                          controller: _firstTermController,
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
                            hintText: 'Enter The First Term',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: _numberofTermsController,
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
                          controller: _commonDifferenceController,
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
                            hintText: 'Enter the Common Difference',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        child: TextButton(
                          onPressed: _generateArithematicProgression,
                          child: Text('Generate AP'),
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
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'First Value : $_firstTerm',
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
                        'Common Difference : $_commonDifference',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Position Of Term : $_nthTerm',
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
                        '$_generatedAP',
                        style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 15),
                          alignment: Alignment.bottomLeft,
                          child: FloatingActionButton(
                            onPressed: _decrementAP,
                            child: Icon(Icons.remove),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, right: 15),
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            onPressed: _incrementAP,
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