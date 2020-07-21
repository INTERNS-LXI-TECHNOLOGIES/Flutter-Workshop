import 'package:customerApp/widget/dropDownCategory.dart';
import 'package:customerApp/widget/dropDownSort.dart';
import 'package:flutter/material.dart';

class Purchase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<Purchase> {
  TextEditingController editingController = TextEditingController();

//  Widget build(BuildContext context) {
//    return Scaffold(appBar: AppBar(title: Text(" Customer Service Register ")));
//  }

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
              child: Row(
                children: <Widget>[Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownSort(),
                ),
                Padding(
                  padding:  const EdgeInsets.all(8.0),
                  child: DropdownCategory(),
                )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
