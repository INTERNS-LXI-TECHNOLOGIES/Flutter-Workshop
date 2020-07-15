import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/orderDetailsLayout.dart';
import 'package:flutterproject/widgets/deliveryDetailsLayout.dart';

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
              Container(
                height: 20,
                margin: EdgeInsets.only(top: 10, bottom: 30),
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Chicken Hut",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              OrderDetailsLayout(),
              DeliveryDetailsLayout(),
            ],
          )),
    );
  }
}
