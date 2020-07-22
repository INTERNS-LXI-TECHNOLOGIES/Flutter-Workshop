import 'package:flutter/material.dart';
import 'package:sample/welcome.dart';
import 'main.dart';

class ConfirmationPage extends StatefulWidget {

  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {

  static bool isOtpPresent = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget buildMobileOtp(){
    return new TextFormField(
      decoration: InputDecoration(labelText: "OTP"),
      validator: (String value){
        if(value.isEmpty){
          return "enter the digits";
        }
//        else if(!RegExp("0-9 {4}").hasMatch(value)) {
//          return "enter number only";
//        }
        return null;
      }
    );
  }
  Widget buildMailCode(){
    return new TextFormField(
        decoration: InputDecoration(labelText: "Code"),
        validator: (String value){
          if(value.isEmpty){
            return "enter the Code";
          }
//          else if(!RegExp("0-9 {4}").hasMatch(value)) {
//            return "enter number only";
//          }
          return null;
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    var mobileOtp;

    return Scaffold(
        resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("heading"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text('Verify mob number and Email', style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 100,
              ),
              Text('Enter OTP send to your mobile'),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    buildMobileOtp(),
                    SizedBox(
                      height: 100,
                    ),
                    Text('Enter code sent to your mail'),
                    buildMailCode(),
                    RaisedButton(onPressed: (){
                      if(!formKey.currentState.validate()){
                        return;
                      }
//                      formKey.currentState.save();
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => WelcomePage()));
                      return null;
                      
                    },
                      child: Text('Confirm'),

                    )
                  ],
                )
              )

            ],
          ),
        )
//
//            ),
//
//            Row(
//              children: [
//                Form(
//                    key: formKey,
//                    child: Column(
//                      children: [
//                        buildMobileOtp(),
//                        SizedBox(
//                          height: 100,
//                        ),
//                      ],
//                    )
//                )
//
//              ],
//            )
//          ],
//        ),
      )
    );
  }

}
