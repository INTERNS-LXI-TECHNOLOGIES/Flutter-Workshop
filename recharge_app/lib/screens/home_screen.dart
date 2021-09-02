import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/telecom_operator_header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.yellow,
          height: height * .27,
          width: width * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 30,
                  child: Image.asset('FlutterLogoStyle'),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 160),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            child: Container(
              width: width * 1,
              color: Colors.cyan[50],
              height: height * .8,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TelecomeOperatorHeader(),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
