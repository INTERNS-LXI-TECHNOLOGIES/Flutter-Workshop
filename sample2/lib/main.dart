

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: <String, WidgetBuilder> {
    '/' :(context) =>LoginPage(),
    'homePage' : (context)=> HomePage(),
    'createUser' : (context)=>CreateUser(),
    }

//    home: HomeApp(),
  )
);
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(142, 144, 242, 1),
                            blurRadius: 20.0,
                            offset: Offset(0,10),
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding:  EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey[100])
                              )
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(
                                  color: Colors.grey[400]
                                )
                              ),
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey[100])
                                )
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400]
                                  )
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 50,),

                    Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, 6),
                      ])
                    ),
                      child: Center(
                        child: FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, "homePage");
                          },
                          child: Text('LOGIN',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "createUser");
                      },
                        child: Text('Forgot password', style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),))
                  ],
                ),
              )
            ],
          ),

        )
      ),

    );
  }
}
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
                decoration: BoxDecoration(
                  color: Colors.orange
                ),
              ),
              ListTile(
                title: Text('first'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('second'),
                onTap: (){
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
class CreateUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text('registration Page'),
        ),
        body: Center(
          child: Text('loading.......! '),
        ),
      ),
    );
  }
}


