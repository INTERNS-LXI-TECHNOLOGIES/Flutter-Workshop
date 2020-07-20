import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('E^2 App'),
                decoration: BoxDecoration(color: Colors.orange),
              ),
              ListTile(
                title: Text('create user'),
                onTap: () {
                  Navigator.pushNamed(context, "createUser");
                },
              ),
              ListTile(
                title: Text('second'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Text('this is home page'),
      ),
    );
  }
}
