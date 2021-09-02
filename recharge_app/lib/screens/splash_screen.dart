import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recharge_app/screens/main_screen.dart';
// import 'package:splashscreen/splashscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MainScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FlutterLogo(
        size: MediaQuery.of(context).size.height,
      ),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new SplashScreen(
//       navigateAfterFuture: loadFromFuture(),
//       title: new Text('Welcome In SplashScreen',
//       style: new TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 20.0
//       ),),
//       image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
//       backgroundColor: Colors.white,
//       styleTextUnderTheLoader: new TextStyle(),
//       photoSize: 100.0,
//       onClick: ()=>print("Flutter Egypt"),
//       loaderColor: Colors.red
//     );
//   }

//   loadFromFuture() {}
// }
// }
