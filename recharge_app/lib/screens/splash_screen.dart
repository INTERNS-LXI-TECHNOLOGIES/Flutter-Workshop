import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recharge_app/screens/main_screen.dart';
// import 'package:splashscreen/splashscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int value;
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MainScreen('', value),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      child: Center(
          child: Container(
        height: 200,
        width: 200,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/images/PayitLogo.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}
