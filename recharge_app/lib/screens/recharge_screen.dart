import 'package:flutter/material.dart';

class RechargeScreen extends StatefulWidget {
  @override
  _RechargeScreenState createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
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
                    SingleChildScrollView(
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.yellow, width: 2)),
                              child: FittedBox(
                                child: Container(
                                  height: height * .1,
                                  width: width * .2,
                                  // padding: EdgeInsets.all(30),
                                  // margin: EdgeInsets.all(40),
                                  child: Center(child: Text('30')),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
