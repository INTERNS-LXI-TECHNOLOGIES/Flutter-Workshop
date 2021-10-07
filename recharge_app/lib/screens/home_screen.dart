import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/amount_textbox.dart';
import 'package:recharge_app/screens/Widgets/dialogbox_widget.dart';
import 'package:recharge_app/screens/Widgets/email_textbox.dart';
import 'package:recharge_app/screens/Widgets/operator_dropdown_menu.dart';
import 'package:recharge_app/screens/Widgets/telecom_operator_header.dart';
import 'package:recharge_app/screens/Widgets/textbox_widget.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class HomeScreen extends StatefulWidget {
  final String phoneNumber;
  final int amount;
  final String operatorNames;
  HomeScreen(this.phoneNumber, this.amount, this.operatorNames);
  @override
  _HomeScreenState createState() =>
      _HomeScreenState(phoneNumber, amount, operatorNames);
}

class _HomeScreenState extends State<HomeScreen> {
  final String phoneNumber;
  final int amount;
  final String operatorNames;
  _HomeScreenState(this.phoneNumber, this.amount, this.operatorNames);
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
    if (amount != null) {
      amountController.text = amount.toString();
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
    // int amount = amountController.text;
    var options = {
      'key': 'rzp_test_VbGQpHcXTYzLhG',
      'amount': num.parse(amountController.text) * 100,
      'name': '${emailController.text}',
      'description': 'Test',
      'prefill': {
        'contact': '91${phoneNumberController.text}',
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
              height: height * .26,
              width: width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/PayitLogo.png'),
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
              height: height * .75,
              margin: EdgeInsets.only(top: 160),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                child: Container(
                  width: width * 1,
                  color: Colors.cyan[50],
                  // height: height * .8,
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
                      OperatorDropDownMenu(operatorNames),
                      SizedBox(
                        height: 20,
                      ),
                      AmountTextBox(
                        amountController: amountController,
                        operator: operatorNames,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      EmailTextBox(
                        emailController: emailController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: MaterialButton(
                          color: Colors.amber[600],
                          splashColor: Colors.amber[900],
                          animationDuration: Duration(milliseconds: 20),
                          onPressed: () {
                            final bool _isEmailValid =
                                EmailValidator.validate(emailController.text);
                            if (_isEmailValid == true &&
                                phoneNumberController.text.isNotEmpty &&
                                amountController.text.isNotEmpty) {
                              openCheckout();
                            } else if (_isEmailValid == false) {
                              return Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('You Are Entered A Wrong Email...'),
                                  duration: Duration(seconds: 4),
                                ),
                              );
                            } else if (phoneNumberController.text.isNotEmpty) {
                              if (phoneNumberController.text.length != 10) {
                                return Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Please Enter a Valid Phone Number...'),
                                    duration: Duration(seconds: 4),
                                  ),
                                );
                              } else if (phoneNumberController.text.length >
                                  13) {
                                return Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Please Enter a Valid Phone Number...'),
                                    duration: Duration(seconds: 4),
                                  ),
                                );
                              }
                            } else if (phoneNumberController.text.isEmpty) {
                              return Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      'Please Enter a Valid Phone Number...'),
                                  duration: Duration(seconds: 4),
                                ),
                              );
                            } else if (amountController.text.isEmpty) {
                              return Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Plz Enter An Amount...'),
                                  duration: Duration(seconds: 4),
                                ),
                              );
                            }
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
