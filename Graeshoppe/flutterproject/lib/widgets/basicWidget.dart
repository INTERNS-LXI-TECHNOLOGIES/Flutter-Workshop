import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class BasicWidget extends StatelessWidget {
  // String formatter = new NumberFormat.simpleCurrency(locale: 'eu').format(453);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * .6,
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                " Order Total(2 Items) ",
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
            child: Center(
                child: Text(
              " 45.3 ",
              style: TextStyle(fontSize: 30),
            )),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue[800],
            child: const Text('CONTINUE',
                style: TextStyle(fontSize: 17, color: Colors.white)),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.white,
            padding: EdgeInsets.all(13),
            child: Row(
              children: <Widget>[
                Icon(Icons.info, color: Colors.blue),
                Expanded(
                  child: Text(
                      'If you or someone you were ordering for has a food allergy or intolerance, click here ',
                      style: TextStyle(
                          fontSize: 17.4, color: Colors.lightBlueAccent)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
