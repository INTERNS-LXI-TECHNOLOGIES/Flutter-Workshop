import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/dialogbox_widget.dart';
import 'package:recharge_app/screens/Widgets/telecom_operator_header.dart';
import 'package:recharge_app/screens/Widgets/textbox_widget.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class HomeScreen extends StatefulWidget {
  final String phoneNumber;
  HomeScreen(this.phoneNumber);
  @override
  _HomeScreenState createState() => _HomeScreenState(phoneNumber);
}

class _HomeScreenState extends State<HomeScreen> {
  final String phoneNumber;
  _HomeScreenState(this.phoneNumber);
  final Razorpay razorpay = Razorpay();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  @override
  void initState() {
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paymentSucessHandler);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, paymentSucessHandler);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWalletsHandler);
    if (phoneNumber.isNotEmpty) {
      phoneNumberController.text = phoneNumber;
    }
    super.initState();
  }

  void paymentSucessHandler(PaymentSuccessResponse response) {
    _showDialog(2, id: response.paymentId);
  }

  void paymentFailureHandler(PaymentFailureResponse response) {
    _showDialog(2, id: response.message);
  }

  void externalWalletsHandler(ExternalWalletResponse response) {}

  void _showDialog(int task, {String id}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DialogBox(
          color: Colors.green[300],
          icon: Icons.check_circle,
          message: "Transaction\nSuccessfull",
          id: id,
        );
      },
    );
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_VbGQpHcXTYzLhG',
      'amount': amountController.text * 100,
      'name': '${emailController.text}',
      'description': 'Test',
      'prefill': {
        'contact': '${phoneNumberController.text}',
        'email': '${emailController.text}'
      },
      'external': {
        'wallets': ['paytm']
      }
    };
    try {
      razorpay.open(options);
    } catch (e) {
      print("Encountered error:" + e);
    }
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TelecomeOperatorHeader(),
                      SizedBox(
                        height: 20,
                      ),
                      TextBox('1234-567-890', 'Phone Number', 'number',
                          phoneNumberController),
                      SizedBox(
                        height: 20,
                      ),
                      TextBox('Eg:- 299', 'Amount', 'number', amountController),
                      SizedBox(
                        height: 30,
                      ),
                      TextBox('example@example.com', 'Mail - Id',
                          'emailAddress', emailController),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: RaisedButton(
                          color: Colors.amber[600],
                          splashColor: Colors.amber[900],
                          animationDuration: Duration(milliseconds: 20),
                          onPressed: () {
                            openCheckout();
                          },
                          child: Text('Recharge'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
