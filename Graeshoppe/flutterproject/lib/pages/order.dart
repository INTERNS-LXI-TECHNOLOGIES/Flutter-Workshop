import 'package:flutter/material.dart';

var globalContext;

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    globalContext = context;
    return MaterialApp(
      title: "Order",
      home: OrderConfirm(),
    );
  }
}

class OrderConfirm extends StatefulWidget {
  @override
  _OrderConfirmState createState() => _OrderConfirmState();
}

class _OrderConfirmState extends State<OrderConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(globalContext);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 300,
            ),
          ),
          Container(
            height: 60,
            child: Center(
                child: Text(
              "Keep Ready €45.3 ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 60,
            child: Center(
                child: Text(
              "Order Placed for: €45.3 ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            height: 80,
            child: Center(
                child: Text(
              "Track your order with GR-1064",
              style: TextStyle(
                fontSize: 20,
              ),
            )),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 35),
                child: RaisedButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Text(
                        "ORDER DETAILS",
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  color: Colors.blue[700],
                  textColor: Colors.white,
                  // elevation: 5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: RaisedButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Text(
                        "ORDER MORE",
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  color: Colors.blue[700],
                  textColor: Colors.white,
                  // elevation: 5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
