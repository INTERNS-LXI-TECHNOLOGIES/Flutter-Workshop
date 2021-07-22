import 'package:flutter/material.dart';

class GeometricProgression extends StatefulWidget {
  _GeometricProgressionState createState() => _GeometricProgressionState();
}

class _GeometricProgressionState extends State {
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
                      // controller: userInputController,
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
                        hintText: 'Enter the Counter Value',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      // controller: userInputController,
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
                        hintText: 'Enter The Intervals',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Generate AP'),
                    ),
                  )
                ],
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
            // // child: Text(
            // //   '${_counterValue.toInt()}(' +
            // //       '${_userInputValue.toInt()}^$_numberOfTimesButtonpressed)',
            // //   style: TextStyle(
            //     color: Colors.grey,
            //     fontSize: 40,
            //   ),
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
