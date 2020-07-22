import 'package:flutter/material.dart';
import 'package:sample/createUser.dart';
import 'main.dart';
class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('E^2 App'),
            decoration: BoxDecoration(color: Colors.orange),
          ),
          ListTile(
            title: Text('create user'),
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => CreateUser()));
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
    );
  }
}
