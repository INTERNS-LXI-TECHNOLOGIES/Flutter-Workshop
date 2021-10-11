import 'package:flutter/material.dart';
import 'package:recharge_app/model/rechargeplandata.dart';
import 'package:recharge_app/screens/tariff_plan_screen.dart';
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
    _operatorPlans = RechargeApi().fetchRechargePlans(23);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .58,
      width: width * 1,
      child: amount.isNotEmpty
          ? FutureBuilder<RechargePlanData>(
              future: _operatorPlans,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var operatorPlanRs;
                  var operatorPlanDescription;
                  for (var index = 0;
                      index < snapshot.data.rdata.length;
                      index++) {
                    if (int.parse(amount) ==
                        snapshot.data.rdata['FULLTT'][index].rs) {
                      operatorPlanRs = snapshot.data.rdata['FULLTT'][index].rs;
                      operatorPlanDescription =
                          snapshot.data.rdata['FULLTT'][index].desc;
                    }
                  }
                  if (operatorPlanRs != null) {
                    return AlertDialog(
                      title: Text(' \u{20B9} $operatorPlanRs'),
                      content: Text('$operatorPlanDescription'),
                    );
                  } else {
                    return AlertDialog(
                      title: Text('Please Enter a Valid Amount'),
                      content: Text(
                          'No Plans Are Found for The Amount You are Entered \nPlease check the Amount you are Entered'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    TariffPlanScreen(operatorName),
                              ),
                            );
                          },
                          child: Text('View Plans'),
                        )
                      ],
                    );
                  }
                } else {
                  return AlertDialog(
                    title: Text('Loading....'),
                    content: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            )
          : AlertDialog(
              title: Text('Please Enter A Valid Amount'),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TariffPlanScreen(operatorName),
                      ),
                    );
                  },
                  child: Text('View Plans'),
                  color: Colors.amber[700],
                ),
              ],
            ),
    );
  }
}
