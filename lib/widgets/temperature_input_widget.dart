import 'package:flutter/material.dart';

class TemperatureInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final GlobalKey<FormState> formKey;

  TemperatureInputWidget({required this.controller, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Enter Temperature',
        border: OutlineInputBorder(),
        labelStyle: TextStyle(fontSize: 18, color: Colors.pink),
        prefixIcon: Icon(Icons.thermostat, color: Colors.pink),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a temperature';
        }
        return null;
      },
    );
  }
}
