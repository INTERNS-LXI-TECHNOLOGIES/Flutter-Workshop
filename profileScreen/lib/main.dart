
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //  Image.asset("assets/download.jpg"),
         
            Icon(Icons.dehaze),
            Text(widget.title),
            Icon(Icons.power_settings_new)
          ],
        ),

      ),
       body: Center(
     child: Column(
      children: <Widget>[
      Row(children: <Widget>[
         
      Container(
        
        width: 200,
        height: 200,
        color: Colors.red,
        
      ),
      Container(
        
       child: Text('test'
       'test@gmail.com')
        
      )
    ],
    ), 

   Row(
    children: <Widget>[
      Expanded(flex: 6,
     child: Container(
        
        width: 700,
        height: 40,
        color: Colors.blue,
        child: IconButton(icon:  Icon(Icons.dehaze), onPressed: null)
      ),
    ),
    ],
   ),


    Row(
       mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      
        Expanded(flex: 6,
      child: Container(
        
        width: 200,
        height: 50,
       child: Text('FAVOURITES')
        
      ),
      ),
      Expanded(flex: 6,
      child: Container(
         width: 200,
        height: 50,
       child: Text('HISTORY')
        
      ),
      ),
    ],
    ), 
    Row(
       mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
     
        Expanded(flex: 6,
          
      child: Container(
        
        width: 200,
        height: 50,
       child: Text('FAVOURITES')
        
      ),
      ),
      Expanded(flex: 6,
      child: Container(
         width: 200,
        height: 100,
       child: Text('Date 09/05/2019 12:43 PM'
              'Grand Total 35.0'
              'Oder status payment-processed'
              'Store Name : four Star'
              'Oder id : GR-1040')
        
      ),
      ),
    ],
    ), 
     Row(
       mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
     
        Expanded(flex: 6,
          
      child: Container(
        
        width: 200,
        height: 50,
       child: Text('FAVOURITES')
        
      ),
      ),
      Expanded(flex: 6,
      child: Container(
         width: 200,
        height: 100,
       child: Text('Date 09/05/2019 12:43 PM'
              'Grand Total 35.0'
              'Oder status payment-processed'
              'Store Name : four Star'
              'Oder id : GR-1040')
        
      ),
      ),
    ],
    ), 
     Row(
       mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
     
        Expanded(flex: 6,
          
      child: Container(
        
        width: 200,
        height: 50,
       child: Text('FAVOURITES')
        
      ),
      ),
      Expanded(flex: 6,
      child: Container(
         width: 200,
        height: 100,
       child: Text('Date 09/05/2019 12:43 PM'
              'Grand Total 35.0'
              'Oder status payment-processed'
              'Store Name : four Star'
              'Oder id : GR-1040')
        
      ),
      ),
    ],
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
              icon: Icon(Icons.shopping_basket),
              title: Text('')
           ),
           BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('')
           )
           ],
           
)
      // appBar: AppBar(
      //   title: Text('Flutter Flat Button Example'),
      // ),
      
 );
 
  }
}
