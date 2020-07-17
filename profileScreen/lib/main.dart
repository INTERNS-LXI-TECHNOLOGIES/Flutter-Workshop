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
              Row(
                children: <Widget>[
                  Image.asset('assets/images.png'),
                  // Container(

                  //   width: 200,
                  //   height: 200,
                  //   color: Colors.red,

                  // ),
                  Container(child: Text('test \n test@gmail.com'))
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    flex: 6,
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

// Row(
//   children: <Widget>[

//       TabBar(
//        tabs:[
//          Tab(text: 'a'),
//          Tab(text: 'b'),
//       ],),
//   ]
// ),

              DefaultTabController(
                length: 2,
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'FAVOURITES',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'HISTORY',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),

              // Row(
              //    mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     TabBar(

              //   // child: Container(

              // //  bottom : TabBar(),
              //     width: 200,
              //     height: 50,
              //     tabs:[
              //    Tab(
              //      Text(
              //      'FAVOURITES',
              //      textAlign: TextAlign.center,
              //      ))
              //     ]

              //   ),

              //   Expanded(flex: 6,
              //   child: Container(

              //      width: 200,
              //     height: 50,
              //    child: Text(
              //      'HISTORY',
              //      textAlign: TextAlign.center,)

              //   ),
              //   ),
              // ],
              // ),
              Row(
                children: <Widget>[
                  Image.asset(
                    'assets/img.png',
                    width: 200,
                    height: 50,
                  ),

                  // Expanded(flex: 6,

                  // child: Container(

                  //   width: 200,
                  //   height: 50,
                  //  child: Text('FAVOURITES')

                  // ),
                  // ),
                  Expanded(
                    flex: 6,
                    child: Container(
                        width: 200,
                        height: 100,
                        child: Text('Date 09/05/2019 12:43 PM'
                            'Grand Total 35.0'
                            'Oder status payment-processed'
                            'Store Name : four Star \n der id : GR-1040')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image.asset(
                    'assets/img.png',
                    width: 200,
                    height: 50,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                        width: 200,
                        height: 100,
                        child: Text('Date 09/05/2019 12:43 PM'
                            'Grand Total 35.0'
                            'Oder status payment-processed'
                            'Store Name : four Star \n Oder id : GR-1040')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/img.png',
                    width: 200,
                    height: 50,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                        width: 200,
                        height: 100,
                        child: Text('Date 09/05/2019 12:43 PM'
                            'Grand Total 35.0'
                            'Oder status payment-processed'
                            'Store Name : four Star \n Oder id : GR-1040')),
                  ),
                ],
              ),
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
}
