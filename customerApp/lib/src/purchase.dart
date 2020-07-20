import 'package:customerApp/widget/customForm.dart';
import 'package:flutter/material.dart';

class Purchase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState ();
  }
}

class FormScreenState extends State<Purchase> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: editingController,
      decoration: InputDecoration(
          labelText: "Search product",
          hintText: "enter product Name",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
    );
  }

}
