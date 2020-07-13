import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.red,
            width: 10,
          ),
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 10,
              blurRadius: 5,
              offset: Offset(10, 10),
            )
          ]),
      child: Center(
        child: Text("Basket"),
      ),
    );
  }
}
