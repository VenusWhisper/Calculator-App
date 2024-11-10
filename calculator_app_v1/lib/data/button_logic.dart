import 'package:calculator_app_v1/data/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'calculator_button.dart'; // Import the file where CalculatorButton is defined

//FIXME completely fix the entire file

void handleButtonPress(int index, WidgetRef ref) {
  String label = CalculatorButton.buttons[index];

  // Check if the label is a number (0-9)
  if (RegExp(r'^[0-9]$').hasMatch(label)) {
    ref.read(displayProvider.notifier).state = label;
  } 
  // Handle 'AC' (clear) button
  else if (label == 'AC') {
    ref.read(displayProvider.notifier).state = '0';
  }

  else if(label == 'π') {
    ref.read(displayProvider.notifier).state = '3.14159265';
  }

  // TODO Add more cases for other buttons (e.g., '=', '+', etc.)
}
