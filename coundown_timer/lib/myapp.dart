import 'package:coundown_timer/decrement_counter.dart';
import 'package:coundown_timer/increment_counter.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CountDowner',
      home: Scaffold(
        body: Stack(
          children: [
            // Row(
            //   children: [
            Container(
              alignment: Alignment.bottomRight,
              child: DecrementCounter(),
              color: Colors.black,
            ),
            SizedBox(
              width: 240,
            ),
            Container(
              // color: Colors.black,
              alignment: Alignment.bottomLeft,
              child: IncrementCounter(),
            ),
          ],
        ),
        // ],
      ),
      // ),
    );
  }
}
