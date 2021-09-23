import 'package:flutter/material.dart';
import 'package:recharge_app/screens/contactspage.dart';
import 'package:recharge_app/screens/home_screen.dart';
import 'package:recharge_app/screens/tariff_plan_screen.dart';

class MainScreen extends StatefulWidget {
  final String phoneNumber;
  final int amount;
  MainScreen(this.phoneNumber, this.amount);
  @override
  _MainScreenState createState() => _MainScreenState(phoneNumber, amount);
}

class _MainScreenState extends State<MainScreen> {
  final String phoneNumber;
  final int amount;
  _MainScreenState(this.phoneNumber, this.amount);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      HomeScreen(phoneNumber, amount),
      TariffPlanScreen(''),
      ContactPage()
    ];
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