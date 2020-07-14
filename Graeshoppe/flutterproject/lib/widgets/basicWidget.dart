import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
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
              child: Text(" Order Total(2 Items) "),
            ),
          ),
          const SizedBox(height: 20),
          RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue,
            child: const Text('CONTINUE', style: TextStyle(fontSize: 17)),
          ),
          const SizedBox(height: 5),
          RaisedButton(
            onPressed: () {},
            color: Colors.white,
            child: const Text(
                'If you or someone you were ordering for has a food allergy or intolerance, click here ',
                style: TextStyle(fontSize: 14, color: Colors.lightBlueAccent)),
          ),
        ],
      ),
    );
  }
}
