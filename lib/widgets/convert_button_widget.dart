import 'package:flutter/material.dart';

class ConvertButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  ConvertButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        textStyle: TextStyle(fontSize: 18, color: Colors.pink),
      ),
      child: Text(
        'Convert',
        style: TextStyle(color: Colors.pink),
      ),
    );
  }
}
