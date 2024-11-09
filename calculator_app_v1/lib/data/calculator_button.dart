import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  // List of buttons --------------------------------------------------------------------------
  static const List<String> buttons = [
    '', '', '', 'AC',
    '√', '%', '(', ')',
    '7', '8', '9', '÷',
    '4', '5', '6', '×',
    '1', '2', '3', '-',
    '0', '', '=', '+',
  ];
  // ------------------------------------------------------------------------------------------

  const CalculatorButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 30, color: Colors.orangeAccent),
      ),
    );
  }
}
