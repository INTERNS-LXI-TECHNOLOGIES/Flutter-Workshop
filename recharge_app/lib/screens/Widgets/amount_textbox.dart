import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/amount_dialogue_box.dart';

class AmountTextBox extends StatefulWidget {
  final TextEditingController amountController;
  final String operator;
  AmountTextBox({this.amountController, this.operator});
  @override
  _AmountTextBoxState createState() =>
      _AmountTextBoxState(amountController, operator);
}

class _AmountTextBoxState extends State<AmountTextBox> {
  final TextEditingController amountController;
  final String operator;
  _AmountTextBoxState(this.amountController, this.operator);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * .9,
      height: height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: TextFormField(
          controller: amountController,
          enabled: true,
          decoration: InputDecoration(
            suffix: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AmountDialogueBox(
                            amount: amountController.text,
                            operatorName: operator,
                          ));
                },
                icon: Icon(Icons.price_check_rounded)),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.yellow,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.yellow, width: 2),
            ),
            hintText: "Eg:- 299",
            alignLabelWithHint: true,
          ),
          maxLength: 10,
          cursorHeight: 30,
        ),
      ),
    );
  }
}
