import 'package:flutter/material.dart';

class DropdownButtonHint extends StatelessWidget {
  final List<String> _dropdownValues = [
    "Mobile",
    "TV",
    "Tablet",
    "Laptop",
    "Speaker"
  ]; //The list of values we want on the dropdown

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _dropdownValues
          .map((value) => DropdownMenuItem(
                child: Text(value),
                value: value,
              ))
          .toList(),
      onChanged: (String value) {},
      isExpanded: false,
      hint: Text('choose Category'),
      
    );
  }
}
