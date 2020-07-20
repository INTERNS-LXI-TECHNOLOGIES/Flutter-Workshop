import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String name;


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
      appBar: AppBar(title: Text(" Customer Service Register ")),
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
//                    if (!formKey.currentState.validate()) {
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            title: new Text(
                                "Congrats !!! your ticket has been Generated !"),
                          ));
                  //  }
                    // ignore: unnecessary_statements
                  })
            ],
          ),
        ),
      ),
    );
  }
}
