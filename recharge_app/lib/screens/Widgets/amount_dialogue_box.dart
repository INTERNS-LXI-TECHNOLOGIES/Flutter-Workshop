import 'package:flutter/material.dart';
import 'package:recharge_app/model/rechargeplandata.dart';
import 'package:recharge_app/services/recharge_plan_api.dart';

class AmountDialogueBox extends StatefulWidget {
  final String operatorName;
  final String amount;
  AmountDialogueBox({this.amount, this.operatorName});
  @override
  _AmountDialogueBoxState createState() =>
      _AmountDialogueBoxState(amount, operatorName);
}

class _AmountDialogueBoxState extends State<AmountDialogueBox> {
  final String operatorName;
  final String amount;
  _AmountDialogueBoxState(this.amount, this.operatorName);
  var operatorCode;
  Future<RechargePlanData> _operatorPlans;

  void initState() {
    if (operatorName == 'jio') {
      operatorCode = 11;
    } else if (operatorName == 'bsnl') {
      operatorCode = 2;
    } else if (operatorName == 'vi') {
      operatorCode = 23;
    } else if (operatorName == 'airtel') {
      operatorCode = 2;
    }
    _operatorPlans = RechargeApi().fetchRechargePlans(operatorCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<RechargePlanData>(
        future: _operatorPlans,
        builder: (context, snapshot) {
          print('${snapshot.data.rdata['FULLTT'][0].desc}');
          return SizedBox();
        },
      ),
    );
  }
}
