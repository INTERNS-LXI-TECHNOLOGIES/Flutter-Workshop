import 'package:flutter/material.dart';
import 'package:recharge_app/model/rechargeplandata.dart';
import 'package:recharge_app/services/recharge_plan_api.dart';

class AmountDialogueBox extends StatefulWidget {
  final String amount;
  AmountDialogueBox(this.amount);
  @override
  _AmountDialogueBoxState createState() => _AmountDialogueBoxState(amount);
}

class _AmountDialogueBoxState extends State<AmountDialogueBox> {
  final String amount;
  _AmountDialogueBoxState(this.amount);
  Future<RechargePlanData> _operatorPlans;

  void initstate() {
    _operatorPlans = RechargeApi().fetchRechargePlans(2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int tariffAmount;
    String tariffDescription;
    return Container(
        child: FutureBuilder<RechargePlanData>(
      future: _operatorPlans,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          for (var index = 0; index < snapshot.data.rdata.length; index++) {
            if (int.parse(amount) == snapshot.data.rdata["FULLTT"][index].rs) {
              tariffAmount = snapshot.data.rdata["FULLTT"][index].rs;
              tariffDescription = snapshot.data.rdata["FULLTT"][index].desc;
            } else {
              tariffDescription =
                  'No Plan details available for this price \n please check your amount and try again';
            }
          }
          AlertDialog(
            title: Text('$tariffAmount'),
            content: Text('$tariffDescription'),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('NO'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('YES'),
              ),
            ],
            elevation: 24,
          );
        } else {
          AlertDialog(
            title: Text('No Plans Found'),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    ));
  }
}
