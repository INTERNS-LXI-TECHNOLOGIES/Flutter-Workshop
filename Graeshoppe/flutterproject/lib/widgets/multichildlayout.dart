import 'package:flutter/material.dart';

class Multichildlayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .4,
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
                style: TextStyle(color: Colors.blue[600]),
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
              deliveryItem,
              deliveryItem,
            ],
          ),
          cardSection,
        ],
      ),
    );
  }

  Widget cardSection = Card(
    child: Column(
      children: <Widget>[
        Ink(
          color: Colors.grey[500],
          child: ListTile(
            title: Text("Delivery Charge"),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            "Subtotal",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        )
      ],
    ),
  );

  Widget deliveryItem = Container(
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
                " Veg Burger",
                style: TextStyle(color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Text(
                  "23.9",
                  style: TextStyle(color: Colors.white),
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
                  child: IconButton(icon: Icon(Icons.remove), onPressed: null)),
              Container(
                  width: 50,
                  child: Center(
                    child: Text("4"),
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
