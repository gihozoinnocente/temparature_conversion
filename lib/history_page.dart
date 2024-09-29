import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> history = ModalRoute.of(context)!.settings.arguments as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Conversion History',
          style: TextStyle(
            color: Colors.white, // White text color
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.pink, // AppBar background color is pink
        centerTitle: true,
      ),
      body: history.isEmpty
          ? Center(
              child: Text(
                'No conversion history yet',
                style: TextStyle(fontSize: 18, color: Colors.pink), // Text color is pink
              ),
            )
          : ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  elevation: 3,
                  child: ListTile(
                    leading: Icon(Icons.history, color: Colors.pink), // Icon color is pink
                    title: Text(
                      history[index],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.pink), // Text color is pink
                    ),
                  ),
                );
              },
            ),
    );
  }
}
