import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final String label;
  final String hintText;
  final String type;
  final TextEditingController textController;

  TextBox(this.hintText, this.label, this.type, this.textController);

  @override
  _TextBoxState createState() =>
      _TextBoxState(label, hintText, type, this.textController);
}

// Final TextEditController
class _TextBoxState extends State<TextBox> {
  _TextBoxState(this.label, this.hintText, this.type, this.textController);
  final String label;
  final String hintText;
  final String type;
  final TextEditingController textController;

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
          controller: textController,
          onChanged: (String newValue) {
            _username = newValue;
          },
          validator: (String submittedValue) {
            if (submittedValue.isEmpty) {
              return '';
            }
            return null;
          },
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
          maxLength: type == 'number' ? 13 : 100,
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
