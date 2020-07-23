import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TicketState();
  }
}

class TicketState extends State<Tickets> {
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

  Widget buildIssue() {
    return TextFormField(
      decoration: InputDecoration(labelText: "what's the Issue ?"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) return 'please tell the Issue';
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget buildSerial() {
    return TextFormField(
      decoration: InputDecoration(labelText: "enter serial number"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) return 'please enter serial NO:';
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget buildService() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Service centre near your place"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) return 'please enter service centre near';
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Generated Tickets ")),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildName(),
              buildIssue(),
              buildSerial(),
              buildService(),
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
                      return;
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
