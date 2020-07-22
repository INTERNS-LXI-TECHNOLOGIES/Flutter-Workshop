import 'package:customerApp/widget/dropDownCategory.dart';
import 'package:customerApp/widget/dropDownSort.dart';
import 'package:customerApp/widget/listProducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Purchase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<Purchase> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Purchase Product"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {},
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search product",
                    hintText: "enter product Name",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Container(
              child: Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownSort(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownCategory(),
                ),
              ]),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  (Center(
                      child: Text(
                    'Available products ',
                    style: TextStyle(fontSize: 20, color: Colors.teal),
                  ))),
                  Center(
//                      child:Image(
//                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTlE0OGdi8AFM4UoslDh_RdNYTdtD4NTQIZsQ&usqp=CAU'),
//                  
//                      ),
                  child: Image.asset("assets/laptop.jpg"),
                  )
                ],
              ),
            ),
            //buildListView()
          ],
        ),
      ),
    );
  }
}
