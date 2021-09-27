import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/amount_dialogue_box.dart';

class OperatorDropDownMenu extends StatefulWidget {
  @override
  _OperatorDropDownMenu createState() => _OperatorDropDownMenu();
}

class _OperatorDropDownMenu extends State<OperatorDropDownMenu> {
  String _chosenValue;
  String selectJioOperator() {
    AmountDialogueBox(
      operatorName: 'Jio',
    );
    return 'JIO';
  }

  String selectAirtelOperator() {
    AmountDialogueBox(
      operatorName: 'Airtel',
    );
    return 'Airtel';
  }

  String selectVIOperator() {
    AmountDialogueBox(
      operatorName: 'VI',
    );
    return 'VI';
  }

  String selectBSNLOperator() {
    AmountDialogueBox(
      operatorName: 'BSNL',
    );
    return 'BSNL';
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * .9,
      height: height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: DropdownButtonFormField(
            focusColor: Colors.white,
            value: _chosenValue,
            iconEnabledColor: Colors.black,
            items: [
              selectJioOperator(),
              selectAirtelOperator(),
              selectVIOperator(),
              selectBSNLOperator()
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            hint: Text(
              "Please choose an Operator",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            onChanged: (String value) {
              setState(() {
                _chosenValue = value;
              });
            }),
      ),
    );
  }
}
