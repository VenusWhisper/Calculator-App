import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  // List of buttons --------------------------------------------------------------------------
  static const List<String> buttons = [
    'sin', 'cos', 'tan', 'AC',
    '√', '%', 'π', '^',
    '7', '8', '9', '÷',
    '4', '5', '6', '×',
    '1', '2', '3', '-',
    '0', 'Del', '=', '+',
  ];
  // ------------------------------------------------------------------------------------------

  const CalculatorButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 3, 74, 67),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 26, color: Colors.white),
      ),
    );
  }
}
