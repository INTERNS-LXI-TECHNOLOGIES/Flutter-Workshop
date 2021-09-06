import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final String label;
  final String hintText;
  final String type;

  TextBox(this.hintText, this.label, this.type);

  @override
  _TextBoxState createState() => _TextBoxState(
        label,
        hintText,
        type,
      );
}

// Final TextEditController
class _TextBoxState extends State<TextBox> {
  _TextBoxState(this.label, this.hintText, this.type);
  final String label;
  final String hintText;
  final String type;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * .9,
      height: height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: TextField(
          enabled: true,
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.yellow,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.yellow, width: 2),
              ),
              hintText: hintText,
              alignLabelWithHint: true,
              labelText: label),
          maxLength: type == 'number' ? 10 : 100,
          cursorHeight: 30,
          keyboardType: type != 'Null'
              ? type == 'Number'
                  ? TextInputType.number
                  : TextInputType.text
              : TextInputType.text,
        ),
      ),
    );
  }
}
