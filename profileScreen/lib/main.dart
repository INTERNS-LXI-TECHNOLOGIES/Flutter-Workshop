//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.dehaze,
                color: Colors.grey,
              ),
              Text(widget.title, style: TextStyle(color: Colors.grey)

                  //style: Color.red,

                  ),
              Icon(
                Icons.power_settings_new,
                color: Colors.grey,
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.loose,
                      child: Image.asset('assets/images.png'),
                    ),
                    Flexible(
                        fit: FlexFit.loose,
                        child:
                            Container(child: Text('test \n test@gmail.com'))),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 6,
                      fit: FlexFit.loose,
                      child: Container(
                          width: 700,
                          height: 40,
                          color: Colors.blue,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  onPressed: null))),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                    tabs: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Tab(
                          child: Text(
                            'FAVOURITES',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Tab(
                          child: Text(
                            'HISTORY',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              getHistory(),
              getHistory(),
              getHistory()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.format_align_left), title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(''))
          ],
        )
        // appBar: AppBar(
        //   title: Text('Flutter Flat Button Example'),
        // ),

        );
  }

  Widget getHistory() {
    return Flexible(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex:5,
                      child: Image.asset(
              'assets/img.png',
              width: 200,
              height: 50,
            ),
          ),
          Expanded(
            flex: 7,
                      child: Container(
                width: 200,
                height: 100,
                child: Text('Date: 09/05/2019 12:43 PM\n'
                    'Grand Total: 35.0\n'
                    'Oder status: payment-processed\n'
                    'Store Name : four Star \nOrder id : GR-1040')),
          ),
        ],
      ),
    );
  }
}
