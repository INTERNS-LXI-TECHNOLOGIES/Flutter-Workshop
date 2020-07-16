import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[700],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.sort),
              title: Text("sort"),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: Stack(
                  children: <Widget>[
                    Icon(Icons.shopping_basket),
                    Positioned(
                        top: 0.0,
                        right: 1.0,
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 15,
                            maxWidth: 15,
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ],
                ),
                title: Text("Shopping Basket")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Person")),
            BottomNavigationBarItem(
                icon: Icon(Icons.filter_list), title: Text("Filter List")),
          ],
        ),
      ),
    );
  }
}
