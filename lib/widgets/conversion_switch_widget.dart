import 'package:flutter/material.dart';

class ConversionSwitchWidget extends StatelessWidget {
  final bool isCelsiusToFahrenheit;
  final ValueChanged<bool> onChanged;

  ConversionSwitchWidget({required this.isCelsiusToFahrenheit, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        isCelsiusToFahrenheit ? 'Celsius to Fahrenheit' : 'Fahrenheit to Celsius',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.pink),
      ),
      value: isCelsiusToFahrenheit,
      activeColor: Colors.pink,
      onChanged: onChanged,
    );
  }
}
