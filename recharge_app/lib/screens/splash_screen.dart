import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recharge_app/screens/main_screen.dart';
// import 'package:splashscreen/splashscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MainScreen(''),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: MediaQuery.of(context).size.height * 1,
    );
  }
}
