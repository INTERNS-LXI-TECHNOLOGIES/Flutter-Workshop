import 'package:flutter/material.dart';
// import 'package:recharge_app/screens/Widgets/countrycode_widget.dart';
// import 'package:recharge_app/screens/Widgets/textbox_widget.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:recharge_app/screens/Widgets/textbox_widget.dart';

class RechargeScreen extends StatefulWidget {
  @override
  _RechargeScreenState createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  TextEditingController _amountController = new TextEditingController();

  Razorpay _razorpay;
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerPaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void handlerPaymentSuccess() {
    print('Payment Successfull');
  }

  void handlerPaymentError() {
    print('Payment Error');
  }

  void handlerExternalWallet() {
    print('External Wallet');
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_VbGQpHcXTYzLhG",
      "amount": "123",
      "name": "sampleApp",
      "description": "Payment for the Same",
      "prefill": {
        "contact": "1234567890",
        "email": "faris@gmail.com",
      },
      "external": {
        "wallets": ["paytm"]
      }
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentNode = FocusScope.of(context);
        if (!currentNode.hasPrimaryFocus) {
          currentNode.unfocus();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.yellow,
              height: height * .27,
              width: width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      radius: 30,

                      // child: Image.asset('FlutterLogoStyle'),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
