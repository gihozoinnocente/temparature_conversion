import 'package:flutter/material.dart';
import 'home_page.dart';
import 'history_page.dart';

void main() {
  runApp(TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Removes debug banner
      title: 'Temperature Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Removed Google Fonts
      ),
      home: HomePage(),
      routes: {
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
