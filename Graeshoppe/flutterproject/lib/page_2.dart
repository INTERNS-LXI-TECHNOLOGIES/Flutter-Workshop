import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Basket",
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: null,
            ),
            title: Text(
              "MR WANG'S",
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: null)
            ],
            backgroundColor: Colors.white,
          ),
          body: ListView(children: <Widget>[
            Container(
              height: 20,
              margin: EdgeInsets.only(top: 10, bottom: 30),
              padding: EdgeInsets.only(left: 10),
              child: Image.asset(
                'wang.jpg',
                width: 175,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ]),
        ));
  }
}
