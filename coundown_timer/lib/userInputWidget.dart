import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final TextEditingController _userInputController;
  final Function _buttonAction;
  UserInput(
    this._userInputController,
    this._buttonAction,
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _userInputController,
      keyboardType: TextInputType.number,
      enabled: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        suffix: ElevatedButton(
          onPressed: _buttonAction(),
          child: Text('GO'),
        ),
        hintText: 'Enter the Counter Value',
      ),
    );
  }
}
