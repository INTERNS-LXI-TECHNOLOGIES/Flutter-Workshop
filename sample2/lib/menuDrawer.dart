import 'package:flutter/cupertino.dart';
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
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("E^2 APP", style: TextStyle(fontSize: 30, ),),
                    SizedBox(height: 20,),
                    Text("Admin", style: TextStyle(fontSize: 25, color: Colors.white),),
                    Text("9495089097",style: TextStyle(fontSize: 15, color: Colors.white),),
                  ],
                ),

                SizedBox(width: 20,),
                Container(

                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(

                    shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/9/9e/Placeholder_Person.jpg" ),
                          fit: BoxFit.fill))

                    )

              ],
            ),
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
