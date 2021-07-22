import 'package:flutter/material.dart';

class ArithematicProgression extends StatefulWidget {
  _ArithematicProgressionState createState() => _ArithematicProgressionState();
}

class _ArithematicProgressionState extends State {
  final _commonDifferenceController = TextEditingController();
  final _firstTermController = TextEditingController();
  final _numberofTermsController = TextEditingController();

  num _firstTerm = 0;
  num _commonDifference = 0;
  num _generatedAP = 0;
  num _numberofTerms = 0;
  void _generateArithematicProgression() {
    setState(() {
      _firstTerm = num.parse(_firstTermController.text);
      _commonDifference = num.parse(_commonDifferenceController.text);
      _numberofTerms = num.parse(_numberofTermsController.text);

      _generatedAP = _firstTerm + ((_numberofTerms - 1) * _commonDifference);
    });
  }

  void _incrementAP() {
    setState(() {
      _generatedAP += _commonDifference;
    });
  }

  void _decrementAP() {
    setState(() {
      if (_generatedAP <= 0) {
        _generatedAP = 0;
      } else {
        _generatedAP -= _commonDifference;
      }
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
                        hintText: 'Enter the First Value',
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
                        hintText: 'Enter The Common Difference',
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
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'First Value : $_firstTerm',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
                Container(
                  child: Text(
                    'Common Difference  Value : $_commonDifference',
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
                    'Ap Value',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 280),
            alignment: Alignment.center,
            child: Text(
              '$_generatedAP',
              style: TextStyle(fontSize: 50, color: Colors.blueGrey),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(12),
            child: FloatingActionButton(
              onPressed: _incrementAP,
              child: Icon(Icons.add),
              elevation: 10,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(12),
            child: FloatingActionButton(
              onPressed: _decrementAP,
              child: Icon(Icons.remove),
              elevation: 10,
            ),
          ),
        ],
      ),
    );
  }
}
