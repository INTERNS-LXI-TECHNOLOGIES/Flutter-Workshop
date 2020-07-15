
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
      title: Row(
          children: <Widget>[
            Icon(Icons.format_align_justify),
            Text(widget.title),
            Icon(Icons.power_settings_new)
          ],
        ),

      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Date 09/05/2019 12:43 PM'
              'Grand Total 35.0'
              'Oder status payment-processed'
              'Store Name : four Star'
              'Oder id : GR-1040',
            ),
            
          ],
        ),
      ),
      
bottomNavigationBar: BottomNavigationBar( items: <BottomNavigationBarItem>[
            
            BottomNavigationBarItem(
              icon: Icon(Icons.format_align_left),
              title: Text('')
           ),
           BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              title: Text('')
           ),
           BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              title: Text('')
           )
           ],
),
      
 );
 
  }
}
