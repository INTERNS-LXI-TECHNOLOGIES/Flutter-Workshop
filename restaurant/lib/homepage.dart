import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
// import 'package:restaurant/Profile.dart';
import 'package:restaurant/filter.dart';

// import 'Basket.dart';
import 'dashboard.dart';
// import 'restaurantdetail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _pages = [Dashboard(),Filter()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[700],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.sort),
              backgroundColor: Colors.white,
              title: Text(''),
            ),
            BottomNavigationBarItem(
               title: new Text(''),
            icon:  Badge(
             badgeColor: Colors.blue,
      badgeContent: Text('0',style: TextStyle(color: Colors.white),),
      child: Icon(Icons.shopping_basket),
    )
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.white,
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.filter_list),
              backgroundColor: Colors.white,
              title: Text(''),
            ),
          ],
           onTap: (index) {
              _currentIndex = index;
             setState(() {
             
              
            });
           },
          ),
    );
}
}