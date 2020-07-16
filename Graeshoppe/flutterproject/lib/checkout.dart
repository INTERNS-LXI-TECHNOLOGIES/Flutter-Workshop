import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Checkout",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: null,
          ),
          title: Text(
            "Checkout",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: 500,
              height: 35,
              margin: EdgeInsets.only(top: 25, left: 25),
              child: Text(
                "Selected Address :Jishnuj ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Divider(),
            FlatButton(
                onPressed: () {},
                child: Container(
                  width: 500,
                  height: 35,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Add Address",
                    style: TextStyle(fontSize: 18),
                  ),
                )),
            Divider(),
            Container(
              width: 500,
              height: 60,
              margin: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Text(
                "Leave a note for the restaurant with anything they need to know (e.g. the doorbell doesn't work). Do not include any details about allergy.",
                style: TextStyle(fontSize: 18, color: Colors.grey[500]),
              ),
            ),
            Container(
              width: 500,
              height: 20,
              margin: EdgeInsets.only(top: 25, left: 40, right: 40),
              child: Text(
                "Note:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 500,
              height: 100,
              margin: EdgeInsets.only(top: 5, left: 40, right: 40),
              child: Text(
                "E.g. the doorbell doesn't work. Do not include any details about allergy.",
                style: TextStyle(fontSize: 18, color: Colors.grey[500]),
              ),
            ),
            Divider(),
            BottomSection(),
          ],
        ),
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .43,
        alignment: Alignment.bottomCenter,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 400,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "CHECKOUT",
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                // elevation: 5,
              ),
            ),
          ],
        ));
  }
}
