import 'package:flutter/material.dart';
import 'package:sample/confirmation.dart';
import 'main.dart';

class CreateUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return createNewUser();
  }
}
class createNewUser extends State<CreateUser> {
  String userName;
  String password;
  String email;
  String location;
  String number;
  bool checkButton = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget buildUserName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Username'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Username is required";
        }
        return null;
      },
      onSaved: (String value) {
        userName = value;
      },
    );
  }

  Widget buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Password is required";
        }
        return null;
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Email is required";
        }
        if(! RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
          return "Enter valid email";
        }
        return null;
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget buildLocation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Location'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Location is required";
        }
        return null;
      },
      onSaved: (String value) {
        location = value;
      },
    );
  }

  Widget buildNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Number'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Number is required";
        }
        return null;
      },
      onSaved: (String value) {
        number = value;
      },
    );
  }
  Widget buildCheckButton() {
    return CheckboxListTile(
      value: checkButton,
      onChanged: (bool value) {
        if(checkButton == false) {
          setState(() {
            checkButton = value;
          });
        }
        else{
          setState(() {
            checkButton = false;
          });
        }
      },
//      subtitle: !checkButton ? Text('Required', style:  TextStyle(color: Colors.red),) : null,
      title: InkWell(
        child: Text('accept company policy'),
        onTap: null,
      ),



    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Text('REGISTER')),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildUserName(),
                buildPassword(),
                buildEmail(),
                buildLocation(),
                buildNumber(),
                buildCheckButton(),
                SizedBox(
                  height: 100,
                ),
                RaisedButton(
                  onPressed: checkButton ? () {
                    if (!formKey.currentState.validate()) {
                      return;
                    }
                    formKey.currentState.save();
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => ConfirmationPage()));
                  } : null,



                  child: Text('submit',
                      style: TextStyle(color: Colors.blue, fontSize: 16)),
                ),

              ],
            )),
      ),
    );
  }
}
