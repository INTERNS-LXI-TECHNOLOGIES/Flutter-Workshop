import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class BodyProducts extends StatefulWidget {
  @override
  _BodyProductsState createState() => _BodyProductsState();
}

class _BodyProductsState extends State<BodyProducts> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: false,
          expandedHeight: 40.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Demo'),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 500.0,
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return  Column(
//                  scrollDirection: Axis.vertical,
//                  addAutomaticKeepAlives: false,

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
              );
            },childCount: 1
          ),
        ),
      ],
    );
  }
}

