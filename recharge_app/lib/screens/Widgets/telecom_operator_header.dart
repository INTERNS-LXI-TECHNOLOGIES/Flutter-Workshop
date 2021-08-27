import 'package:flutter/material.dart';
import 'package:recharge_app/screens/tariff_plan_screen.dart';

class TelecomeOperatorHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .1,
      width: width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          telecomAvatar('assets/images/Jio_logo.png', 'jio'),
          telecomAvatar('assets/images/Vi_logo.png', 'vi'),
          telecomAvatar('assets/images/Airtel_logo.png', 'airtel'),
          telecomAvatar('assets/images/BSNL.png', 'bsnl'),
        ],
      ),
    );
  }

  GestureDetector telecomAvatar(String operatorLogo, String operatorNames) {
    return GestureDetector(
      onTap: () => TariffPlanScreen(operatorNames),
      child: Container(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,

          child: Image.asset(
            operatorLogo,
            fit: BoxFit.fill,
          ),
          // ),
        ),
      ),
    );
  }
}
