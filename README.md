# temperature_app

A new Flutter project.

## Widget and How they works
Temperature Conversion App by Innocente GIHOZO

Link to Github: https://github.com/gihozoinnocente/temparature_conversion
Demo Video: https://youtu.be/MOniW4o2otU

Explanation of How my Widget works:
 1. TemperatureInputWidget
- Purpose: This widget handles user input for the temperature value.
- Key Features:
  - It uses a TextFormField to capture temperature.
  - Includes validation to ensure the user inputs a value.
  - Uses a TextEditingController to manage the text field’s state.
- How It Works: When the user types a temperature value, the controller updates, and if the input is valid, it can be converted when the user presses the "Convert" button.

 2. ConversionSwitchWidget
- Purpose: This widget allows users to toggle between Celsius and Fahrenheit conversions.
- Key Features:
  - Utilizes a SwitchListTile for a user-friendly toggle.
  - Displays the current conversion direction (Celsius to Fahrenheit or vice versa).
- How It Works: When the user flips the switch, it calls the onChanged callback, which updates the state in the HomePage to reflect the current conversion type.

 3. ConversionResultWidget
- Purpose: This widget displays the result of the temperature conversion.
- Key Features:
  - Uses a Text widget to show the conversion result in a large, bold font.
- How It Works: The result string is passed as a parameter, and whenever the conversion is made, this widget updates to reflect the new temperature.

4. ConvertButtonWidget
- Purpose: This widget represents the button that triggers the conversion.
- Key Features:
  - Styled as an ElevatedButton for a modern look.
  - Takes a callback function (onPressed) to handle the conversion logic.
- How It Works: When the button is pressed, it executes the function passed to it, which calls the _convertTemperature method in the HomePage, performing the conversion and updating the result.

5.History Widget
-Purpose: To record all converted temperature
-How it Works: Uses List view to show the history of all converted temperatures



Final Look 
![screenshot](Images.png)

