import 'package:flutter/material.dart';

class Multichildlayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .4,
      color: Colors.white,
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Container(
            width: 300,
            height: 50,
            color: Colors.white,
            child: Center(
              child: Text(
                " DELIVERY ",
                style: TextStyle(color: Colors.blue[600]),
              ),
            ),
          ),
          Divider(
            color: Colors.blue[600],
            thickness: 4.5,
            indent: 7,
            endIndent: 7,
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                width: 400,
                height: 50,
                color: Colors.cyan[300],
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 400,
                height: 50,
                color: Colors.cyan[300],
              )
            ],
          )
        ],
      ),
    );
  }
}
