import 'package:coundown_timer/squareAddition_screen.dart';
import 'package:flutter/material.dart';

class StartUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CountDown Timer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 400,
            width: 400,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Arithematic Progression'),
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: () {},
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
