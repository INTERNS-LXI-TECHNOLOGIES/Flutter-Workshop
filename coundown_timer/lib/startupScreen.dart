import 'package:coundown_timer/arithemticProgression_screen.dart';
import 'package:coundown_timer/geometricProgression_screen.dart';
import 'package:coundown_timer/squareAddition_screen.dart';
import 'package:flutter/material.dart';

class StartUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            width: 400,
            margin: EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Card(
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.timer,
                      size: 150,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Timer',
                          style:
                              TextStyle(fontSize: 50, color: Colors.blueGrey),
                        ),
                        Text(
                          'Ur Perfect Timer App',
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 15),
                        ),
                      ],
                    ),
                    // padding: EdgeInsets.only(left: 35),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 400,
            width: 400,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ArithematicProgression()));
                    },
                    child: Text('Arithematic Progression'),
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GeometricProgression()));
                    },
                    child: Text('Geometric Progression'),
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SquareAddition()));
                    },
                    child: Text('Square Addition'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
