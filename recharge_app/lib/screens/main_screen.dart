import 'package:flutter/material.dart';
import 'package:recharge_app/screens/contactspage.dart';
import 'package:recharge_app/screens/home_screen.dart';

import 'package:recharge_app/screens/tariff_plan_screen.dart';

class MainScreen extends StatefulWidget {
  final String phoneNumber;
  MainScreen(this.phoneNumber);
  @override
  _MainScreenState createState() => _MainScreenState(phoneNumber);
}

class _MainScreenState extends State<MainScreen> {
  final String phoneNumber;
  _MainScreenState(this.phoneNumber);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [HomeScreen(phoneNumber), TariffPlanScreen(''), ContactPage()];
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.cyan[50],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Plans',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Contacts',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
