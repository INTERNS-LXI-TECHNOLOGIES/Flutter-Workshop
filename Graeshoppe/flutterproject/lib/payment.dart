import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Payment",
      home: PaymentMode(),
    );
  }
}

class PaymentMode extends StatefulWidget {
  @override
  _PaymentModeState createState() => _PaymentModeState();
}

class _PaymentModeState extends State<PaymentMode> {
  String radioItem = '';
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
              width: 400,
              height: 90,
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              child: Text(
                " €45.30",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 400,
              height: 70,
              alignment: Alignment.topCenter,
              child: Text("Total amount due",
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            Container(
              width: 400,
              height: 40,
              margin: EdgeInsets.only(left: 20),
              child: Text("Choose a payment method",
                  style: TextStyle(fontSize: 18)),
            ),
            RadioListTile(
                value: 'Cash on Delivery',
                groupValue: radioItem,
                title: Text('Cash on Delivery'),
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                }),
            RadioListTile(
                value: 'Credit/Debit Card',
                groupValue: radioItem,
                title: Text('Credit/Debit Card'),
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                }),
            RadioListTile(
                value: 'Paypal Wallet/Card',
                groupValue: radioItem,
                title: Text('Paypal Wallet/Card'),
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                }),
            // Text(
            //   '$radioItem',
            //   style: TextStyle(fontSize: 23),
            // )
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
              ),
              width: 400,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "CONTINUE",
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.blue[700],
                textColor: Colors.white,
                // elevation: 5,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[700],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.sort),
              title: Text("sort"),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket),
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
