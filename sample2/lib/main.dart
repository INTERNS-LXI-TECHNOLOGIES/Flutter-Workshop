

import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: <String, WidgetBuilder> {
    '/' :(context) =>LoginPage(),
    'homePage' : (context)=> HomePage(),
    'createUser' : (context)=>CreateUser(),
    }

//    home: HomeApp(),
  )
);
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(142, 144, 242, 1),
                            blurRadius: 20.0,
                            offset: Offset(0,10),
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding:  EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey[100])
                              )
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(
                                  color: Colors.grey[400]
                                )
                              ),
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey[100])
                                )
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400]
                                  )
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 50,),

                    Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, 6),
                      ])
                    ),
                      child: Center(
                        child: FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, "homePage");
                          },
                          child: Text('LOGIN',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "createUser");
                      },
                        child: Text('Forgot password', style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),))
                  ],
                ),
              )
            ],
          ),

        )
      ),

    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('E^2 App'),
                decoration: BoxDecoration(
                  color: Colors.orange
                ),
              ),
              ListTile(
                title: Text('create user'),
                onTap: (){
                  Navigator.pushNamed(context, "createUser");
                },
              ),
              ListTile(
                title: Text('second'),
                onTap: (){
                Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
        title: Text('Home Page'),
        ),
        body: Text('this is home page'),

      ),
    );
  }

}
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

  final GlobalKey<FormState> formKey= GlobalKey<FormState>();

  Widget buildUserName(){

    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username'
      ),
      validator:(String value) {
        if(value.isEmpty){
          return "Username is required";
        }
        return null;
      },
      onSaved: (String value){
        userName = value;
      },
    );
  }
  Widget buildPassword(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password'
      ),
      validator:(String value) {
        if(value.isEmpty){
          return "Password is required";
        }
        return null;
      },
      onSaved: (String value){
        password = value;
      },
    );

  }
  Widget buildEmail(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Email'
      ),
      validator:(String value) {
        if(value.isEmpty){
          return "Email is required";
        }
        return null;
      },
      onSaved: (String value){
        email = value;
      },
    );

  }
  Widget buildLocation(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Location'
      ),
      validator:(String value) {
        if(value.isEmpty){
          return "Location is required";
        }
        return null;
      },
      onSaved: (String value){
        location = value;
      },
    );

  }
  Widget buildNumber(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Number'
      ),
      validator:(String value) {
        if(value.isEmpty){
          return "Number is required";
        }
        return null;
      },
      onSaved: (String value){
        number = value;
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER')
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child:  Form(
          key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildUserName(),
                buildPassword(),
                buildEmail(),
                buildLocation(),
                buildNumber(),
                SizedBox(
                  height: 100,
                ),
                RaisedButton(onPressed: (){
                    if(!formKey.currentState.validate()){
                      return;
                    }
                    formKey.currentState.save();
                  },
                  child: Text('submit', style: TextStyle(
                    color: Colors.blue, fontSize: 16)
                  ),
                )
              ],
            )),
      ),
    );
  }

}


