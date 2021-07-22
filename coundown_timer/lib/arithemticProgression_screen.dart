import 'package:flutter/material.dart';

class ArithematicProgression extends StatefulWidget {
  _ArithematicProgressionState createState() => _ArithematicProgressionState();
}

class _ArithematicProgressionState extends State {
  final _commonDifferenceController = TextEditingController();
  final _firstTermController = TextEditingController();

  int _firstTerm = 0;
  int _commonDifference = 0;
  int _generatedAP = 0;
  void _generateArithematicProgression() {
    setState(() {
      _firstTerm = int.parse(_firstTermController.text);
      _commonDifference = int.parse(_commonDifferenceController.text);
      _generatedAP = _firstTerm + (n - 1) * d;
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
            height: 230,
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
                            width: 5,
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
                      controller: _commonDifferenceController,
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
            // height: 200,
            // width: 400,
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
                    ' AP Value :',
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(12),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              elevation: 10,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(12),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.remove),
              elevation: 10,
            ),
          ),
        ],
      ),
    );
  }
}
