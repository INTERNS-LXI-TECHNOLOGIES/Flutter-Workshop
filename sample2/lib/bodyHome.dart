import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'main.dart';

class BodyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: screenSize.width/2,
//              height: screenSize.height/10,
          padding: EdgeInsets.all(20),
          child: Center(child: Text("Branches")),
        ),
        Container(
//          color: Colors.yellow,
          width: screenSize.width,
          height: screenSize.height/4,
          padding: EdgeInsets.all(25),

          child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RaisedButton(
                    child: Center(
                      child: Text("TVM"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){

                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Center(
                      child: Text("kollam"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Center(
                      child: Text("pathanamthitta"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Center(
                      child: Text("palakkad"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Center(
                      child: Text("malappuram"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Center(
                      child: Text("kannur"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Center(
                      child: Text("vayanad"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Center(
                      child: Text("thrissur"),
                    ),
                    color: Colors.blue[200],
                    onPressed: (){
                      Fluttertoast.showToast(
                          msg: "Loading...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                ),
                SizedBox(
                  width: 20,
                ),
              ]
          ),
        ),

      ],
    ) ;
  }
}
