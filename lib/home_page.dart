import 'package:flutter/material.dart';
import 'widgets/temperature_input_widget.dart';
import 'widgets/conversion_switch_widget.dart';
import 'widgets/conversion_result_widget.dart';
import 'widgets/convert_button_widget.dart';

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
        _result = "${((_inputTemperature! * 9 / 5) + 32).toStringAsFixed(2)} °F";
      } else {
        _result = "${((_inputTemperature! - 32) * 5 / 9).toStringAsFixed(2)} °C";
      }
      _history.add("$_inputTemperature ${_isCelsiusToFahrenheit ? '°C' : '°F'} -> $_result");
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
        backgroundColor: Colors.pink,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.history, color: Colors.white),
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
              TemperatureInputWidget(controller: _controller, formKey: _formKey),
              SizedBox(height: 20),
              ConversionSwitchWidget(
                isCelsiusToFahrenheit: _isCelsiusToFahrenheit,
                onChanged: (bool value) {
                  setState(() {
                    _isCelsiusToFahrenheit = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ConvertButtonWidget(onPressed: _convertTemperature),
              SizedBox(height: 20),
              ConversionResultWidget(result: _result),
            ],
          ),
        ),
      ),
    );
  }
}
