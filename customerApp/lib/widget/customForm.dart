import 'package:customerApp/widget/customForm.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'tell us your problem',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              )
            ]));
  }
}
class ProductForm extends StatelessWidget {
  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'which product ?',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              )
            ]));
  }
}



