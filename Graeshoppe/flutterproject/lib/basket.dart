import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/basicWidget.dart';
import 'package:flutterproject/widgets/multichildlayout.dart';

class Basket extends StatelessWidget {
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
              "Basket",
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.refresh),
                  color: Colors.black,
                  onPressed: null)
            ],
            backgroundColor: Colors.white,
          ),
          body: ListView(
            children: <Widget>[
              BasicWidget(),
              Multichildlayout(),
            ],
          )),
    );
  }

  Widget firstContainer = Container(
    height: 2,
    margin: EdgeInsets.only(top: 50, bottom: 500),
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
