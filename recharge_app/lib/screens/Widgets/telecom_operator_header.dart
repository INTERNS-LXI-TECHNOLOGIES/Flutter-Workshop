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
          telecomAvatar('assets/images/Jio_logo.png', 'jio', context),
          telecomAvatar('assets/images/Vi_logo.png', 'vi', context),
          telecomAvatar('assets/images/Airtel_logo.png', 'airtel', context),
          telecomAvatar('assets/images/BSNL.png', 'bsnl', context),
        ],
      ),
    );
  }

  GestureDetector telecomAvatar(
      String operatorLogo, String operatorNames, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TariffPlanScreen(operatorNames)));
      },
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
