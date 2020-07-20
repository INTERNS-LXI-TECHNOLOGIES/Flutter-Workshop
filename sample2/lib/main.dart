import 'dart:core';
//import 'dart:js';
import 'createUser.dart';
import 'loginPage.dart';
import 'homePage.dart';
import 'confirmation.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => LoginPage(),
          'homePage': (context) => HomePage(),
          'createUser': (context) => CreateUser(),
          'confirmation': (context) => ConfirmationPage(),
        }

//    home: HomeApp(),
        ));




