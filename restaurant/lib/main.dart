import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home(),
  ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold (
    appBar: AppBar(
      title: Image.asset('assets/favicon.png', fit: BoxFit.cover),

      backgroundColor: Colors.white,
      leading: GestureDetector(
      onTap: () { /* Write listener code here */ },
      child: Icon(
        Icons.menu,  // add custom icons also
        color: Colors.black,
      ),
  ),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.search,
          size: 26.0,
          color: Colors.black,
        ),
      )
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.notifications_none,
          size: 26.0,
          color: Colors.black,
          
        ),
      )
    ),
  ],
    ),
    body: Column(children: <Widget>[
    Row(
      children:  <Widget>[
      
        Image.asset(
          'assets/iritty.jpg',width: 360,height: 200,
          fit: BoxFit.cover,
        ),
        
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  <Widget>[
        Column(children:  <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child:Image.asset(
          'assets/pizza.png',width: 175,height: 100,
          fit: BoxFit.cover,
        ),
        ),
         Text('Whats Nearby!'), 
        ]),
        Column(children:  <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child:Image.asset(
          'assets/pizza2.jpg',width: 175,height: 100,
          fit: BoxFit.cover,
        ),
          ),
          Row(children: <Widget>[
Text('Athirkkad Rd'),
Icon(Icons.edit,size: 26.0,)
          ],)
        
        
        

      ]),
    ]),
    ]),
    );
  }
}

