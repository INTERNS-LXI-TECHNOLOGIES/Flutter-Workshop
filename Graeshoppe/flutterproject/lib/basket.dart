import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basket",
      home: BasketMode(),
    );
  }
}

class BasketMode extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<BasketMode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class DeliveryDetailsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .55,
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Container(
            width: 300,
            height: 50,
            color: Colors.white,
            child: Center(
              child: Text(
                " DELIVERY ",
                style: TextStyle(
                    color: Colors.blue[600], fontWeight: FontWeight.bold),
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
              deliveryItem('Veg Burger', 4, 23),
              deliveryItem('Chicken Burger', 5, 34),
            ],
          ),
          itemPrice(0.0, 45.3),
        ],
      ),
    );
  }

  Card itemPrice(double deliveryCharge, double totalCharge) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
              width: 450,
              height: 60,
              color: Colors.grey[500],
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Delivery Charge",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 270),
                    child: Text(
                      "0.0",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )),
          Divider(),
          Container(
              width: 450,
              height: 60,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "SubTotal",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 300),
                    child: Text(
                      "45.3",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  // item box
  Container deliveryItem(String item, int amount, double price) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 400,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.cyan[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Column(
              children: <Widget>[
                Text(
                  item, // food item
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3, left: 0),
                  child: Text(
                    '€' + price.toString(), // price of food item
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 150,
            height: 35,
            margin: EdgeInsets.only(left: 100),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                    child:
                        IconButton(icon: Icon(Icons.remove), onPressed: null)),
                Container(
                    width: 50,
                    child: Center(
                      child: Text(amount.toString()), // amount of food item
                    )),
                Flexible(
                    child: IconButton(icon: Icon(Icons.add), onPressed: null)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDetailsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * .6,
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
              " €45.3 ",
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
