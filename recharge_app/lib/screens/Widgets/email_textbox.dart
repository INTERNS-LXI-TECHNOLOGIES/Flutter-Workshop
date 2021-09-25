import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailTextBox extends StatefulWidget {
  final TextEditingController emailController;
  EmailTextBox({this.emailController});
  @override
  _EmailTextBoxState createState() =>
      _EmailTextBoxState(emailController: emailController);
}

class _EmailTextBoxState extends State<EmailTextBox> {
  final TextEditingController emailController;
  _EmailTextBoxState({this.emailController});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final bool _isValid = EmailValidator.validate(emailController.text);
    return Container(
      width: width * .9,
      height: height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: TextFormField(
          controller: emailController,
          enabled: true,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: _isValid ? Colors.yellow : Colors.red[900],
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.yellow, width: 2),
            ),
            hintText: 'example@example.com',
            alignLabelWithHint: true,
          ),
          maxLength: 100,
          cursorHeight: 30,
        ),
      ),
    );
  }
}
