import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? _inputTemperature;
  String _result = "";
  bool _isCelsiusToFahrenheit = true;
  List<String> _history = [];

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  void _convertTemperature() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _inputTemperature = double.parse(_controller.text);
        if (_isCelsiusToFahrenheit) {
          _result = "${(_inputTemperature! * 9 / 5) + 32} °F";
        } else {
          _result = "${(_inputTemperature! - 32) * 5 / 9} °C";
        }
        _history.add("$_inputTemperature ${_isCelsiusToFahrenheit ? '°C' : '°F'} -> $_result");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Temperature Converter',
          style: TextStyle(
            color: Colors.white, // Text color is white
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.pink, // AppBar background is pink
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.history, color: Colors.white), // Icon color is white
            onPressed: () {
              Navigator.pushNamed(context, '/history', arguments: _history);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Enter Temperature',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(fontSize: 18, color: Colors.pink), // Label text color is pink
                  prefixIcon: Icon(Icons.thermostat, color: Colors.pink), // Icon color is pink
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a temperature';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              SwitchListTile(
                title: Text(
                  _isCelsiusToFahrenheit ? 'Celsius to Fahrenheit' : 'Fahrenheit to Celsius',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.pink), // Text color is pink
                ),
                value: _isCelsiusToFahrenheit,
                activeColor: Colors.pink,
                onChanged: (bool value) {
                  setState(() {
                    _isCelsiusToFahrenheit = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _convertTemperature,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, 
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18, color: Colors.pink), 
                ),
                child: Text(
                  'Convert',
                  style: TextStyle(color: Colors.pink), 
                ),
              ),
              SizedBox(height: 20),
              Text(
                _result,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.pink), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
