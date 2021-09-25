import 'package:flutter/material.dart';
import 'package:recharge_app/screens/Widgets/amount_dialogue_box.dart';

class AmountTextBox extends StatefulWidget {
  final TextEditingController amountController;
  AmountTextBox(this.amountController);
  @override
  _AmountTextBoxState createState() => _AmountTextBoxState(amountController);
}

class _AmountTextBoxState extends State<AmountTextBox> {
  final TextEditingController amountController;

  _AmountTextBoxState(this.amountController);

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
                      builder: (_) => AmountDialogueBox(amountController.text));
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
