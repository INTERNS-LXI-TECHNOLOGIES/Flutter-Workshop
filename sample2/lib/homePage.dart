import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sample/src/purchase.dart';
import 'main.dart';
import 'bodyProducts.dart';
import 'bottomNavigation.dart';
import 'bodyHome.dart';

import 'menuDrawer.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int indexNo=0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    final tabs = [
      BodyHome(),
      Purchase(),
      Center(child: Text("Tockens"),),
      Center(child: Text("Alerts"),),

    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: new MenuDrawer(),
          bottomNavigationBar: buildTabNav(),
          appBar: AppBar(
            title: Text('ESquare App'),
          ),
          body: tabs[indexNo]

      ),
    );
  }
  BottomNavigationBar buildTabNav (){
    return BottomNavigationBar(
      currentIndex: indexNo,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("home"),
          backgroundColor: Colors.orange[500],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart),
          title: Text("products"),
          backgroundColor: Colors.orange[500],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          title: Text("tickets"),
          backgroundColor: Colors.orange[500],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_alert),
          title: Text("alert"),
          backgroundColor: Colors.orange,
        )
      ],
      onTap: (index){
        setState(() {
          indexNo=index;
        });
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
    );
  }
}