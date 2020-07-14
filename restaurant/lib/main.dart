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
          'assets/iritty.jpg',width: 360,height: 150,
          fit: BoxFit.cover,
        ),
        
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  <Widget>[
        Column(children:  <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child:Image.asset(
          'assets/pizza.png',width: 175,height: 100,
          fit: BoxFit.cover,
        ),
        ), 
        ]),
        Column(children:  <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child:Image.asset(
          'assets/pizza2.jpg',width: 175,height: 100,
          fit: BoxFit.cover,
        ),
          ),
      ]),
    ]),
    Row(children: <Widget>[
      Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        padding: EdgeInsets.symmetric(horizontal: 30,vertical:10),
        color: Colors.grey[200],
        child: Text('Whats Nearby                               AthirkadRd'),
        
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        padding: EdgeInsets.symmetric(horizontal: 6,vertical:6),
        color: Colors.grey[200],
        child: Icon(Icons.edit)
      ),
    ]),
    Row(children: <Widget>[
         Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                child: Material(
                    color: Colors.white,
                    elevation: 10,
                    // borderRadius: BorderRadius.circular(10),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 296,
                          height: 80,
                          child: ClipRRect(
                            // borderRadius: new BorderRadius.circular(10),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/chickenhut.jpg"),
                             
                          ),),),
                          Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child:Text('data'),
                          ),
                        ),
                      ],)
                ),
            ),
          ),
      ],),
      Row(children: <Widget>[
         Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                child: Material(
                    color: Colors.white,
                    elevation: 10,
                    // borderRadius: BorderRadius.circular(10),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 296,
                          height: 80,
                          child: ClipRRect(
                            // borderRadius: new BorderRadius.circular(10),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/PAPA.jpg"),
                             
                          ),),),
                          Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child:Text('data'),
                          ),
                        ),
                      ],)
                ),
            ),
          ),
      ],),

        ]),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey[700],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.sort),
          backgroundColor: Colors.white,
          title: Text('home'),
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          backgroundColor: Colors.white,
          title: Text('home'),
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.person),
          backgroundColor: Colors.white,
          title: Text('home'),
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.filter_list),
          backgroundColor: Colors.white,
          title: Text('home'),
          ),
      ]),
    );
  }
}

