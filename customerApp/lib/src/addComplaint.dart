import 'package:customerApp/widget/customForm.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String name;

//  String email;
//  String password;
//  String phoneNumber;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Product name"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) return 'please enter Product Name';
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: "what's the Issue ?"),
    );
  }

  Widget buildPassWord() {
    return TextFormField(
      decoration: InputDecoration(labelText: "enter serial number"),
    );
  }

  Widget buildNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Service centre near your place"),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register customer Issue")),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildName(),
              buildEmail(),
              buildNumber(),
              buildPassWord(),
              SizedBox(
                height: 3,
              ),
              RaisedButton(
                  child: Text(
                    "Generate Ticket",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!formKey.currentState.validate()) {
                       return showAlertDialog(context);

                    } else
                      // ignore: unnecessary_statements
                      () {
                        showAlertDialog(context);
//                        formKey.currentState.save();
//                        print(name);
                      };

                    // formKey.currentState.save()
                  })
            ],
          ),
        ),
      ),
    );
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
}