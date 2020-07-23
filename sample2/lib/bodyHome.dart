

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sample/src/addComplaint.dart';
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
          child: Center(child: Text("Branches", style: TextStyle(fontSize: 30),)),
        ),
        Container(
          color: Colors.blue,
          width: screenSize.width,
          height: screenSize.height/4,
          padding: EdgeInsets.all(10),

          child: ListView(
              scrollDirection: Axis.vertical,
              addAutomaticKeepAlives: false,

              children: [
                RaisedButton(
                    child: Center(
                      child: Text("TVM"),
                    ),
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                      child: Text("alapuzha"),
                    ),
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    color: Colors.orangeAccent[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
        SizedBox(
          height: 50,
        ),
        Container(
          child: Column(
            children: [
              Center(
                child: Text("My purchased items"),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child: Text("see more",textAlign: TextAlign.left, style: TextStyle(color: Colors.red),),
                  onTap: (){
                    Fluttertoast.showToast(
                        msg: "No more products to show..!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                ),
              )

            ],
          ),
        ),
        Container(
          height: 150,
//          color: Colors.red,
          child: Row(
            children: [
                Card(
//                  color: Colors.red,
                  child: Column(
                    children: [
                      Container(
                        height:screenSize.height/10,
                        width: screenSize.width/4,
                        child: Image.network("https://images.unsplash.com/photo-1511385348-a52b4a160dc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"
                        , fit: BoxFit.fill,),
                      ),
                      Text(" LENOVO laptop "),
                      RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => FormScreen()));
                        },
                        child: Text("Request for service"),
                      )
                    ],
                  ),


                ),
              Card(
//                  color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height:screenSize.height/10,
                      width: screenSize.width/4,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmju-b3uC8v65RJfZCpWRYZWy6-sTUFUEy4gGGHzgX6pX_gLYqWyYcrnz59kgHMxzwYxQQqt0&usqp=CAc"
                        , fit: BoxFit.fill,),
                    ),
                    Text(" Iphone "),
                    RaisedButton(
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => FormScreen()));
                      
                    },
                      child: Text("Request for service"),
                    )
                  ],
                ),


              ),

            ],
          ),
        ),


      ],
    ) ;
  }
}
