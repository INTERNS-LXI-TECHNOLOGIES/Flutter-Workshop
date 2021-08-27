import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/telecom_operator_header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          TelecomeOperatorHeader(),
        ],
      ),
    );
  }
}
