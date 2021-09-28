import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/amount_dialogue_box.dart';
import 'package:recharge_app/screens/Widgets/amount_textbox.dart';

class OperatorDropDownMenu extends StatefulWidget {
  final String operatorNames;
  OperatorDropDownMenu(this.operatorNames);
  @override
  _OperatorDropDownMenu createState() => _OperatorDropDownMenu(operatorNames);
}

class _OperatorDropDownMenu extends State<OperatorDropDownMenu> {
  final String operatorName;
  _OperatorDropDownMenu(this.operatorName);
  String chosenValue;

  String selectJioOperator() {
    AmountTextBox(
      operator: 'jio',
    );
    return 'JIO';
  }

  String selectAirtelOperator() {
    AmountTextBox(
      operator: 'airtel',
    );
    return 'Airtel';
  }

  String selectVIOperator() {
    AmountTextBox(
      operator: 'vi',
    );
    return 'VI';
  }

  String selectBSNLOperator() {
    AmountTextBox(
      operator: 'bsnl',
    );
    return 'BSNL';
  }

  @override
  void initState() {
    if (operatorName == 'jio') {
      chosenValue = selectJioOperator();
    } else if (operatorName == 'airtel') {
      chosenValue = selectAirtelOperator();
    } else if (operatorName == 'vi') {
      chosenValue = selectVIOperator();
    } else if (operatorName == 'bsnl') {
      chosenValue = selectBSNLOperator();
    }
    super.initState();
  }

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
            value: chosenValue,
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
                chosenValue = value;
                AmountDialogueBox(operatorName: chosenValue);
              });
            }),
      ),
    );
  }
}
