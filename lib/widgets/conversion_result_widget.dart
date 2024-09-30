import 'package:flutter/material.dart';

class ConversionResultWidget extends StatelessWidget {
  final String result;

  ConversionResultWidget({required this.result});

  @override
  Widget build(BuildContext context) {
    return Text(
      result,
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.pink),
    );
  }
}
