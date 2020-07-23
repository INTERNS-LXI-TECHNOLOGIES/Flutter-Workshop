import 'package:flutter/material.dart';
import 'package:sample/homePage.dart';
import 'main.dart';

class WelcomePage extends StatelessWidget {
  var name= "admin";
  @override
  Widget build(BuildContext context) {
    final screenSize= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("WELCOME TO ESQUARE"),),
      body: Column(
        children: [
           Center(
             child: Container(
               width: screenSize.width*2/3,
               color: Colors.greenAccent,
               padding: EdgeInsets.all(10),
               child: Text("You have successfully registered with Esquare", style: TextStyle(fontSize: 20),),

             ),
           ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              width: screenSize.width*2/3,
              child: Row(
                children: [
                  Text("use "),
                  Text("$name ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("as ID for future purpose"),
                ],
              )
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: RaisedButton(
              child: Text("Okay"),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => HomePage()));
                }
            ),
          )
        ],
      ),
    );
  }
}
