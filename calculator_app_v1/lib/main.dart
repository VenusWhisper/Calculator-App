import 'package:calculator_app_v1/services/device_orientation.dart';
import 'package:calculator_app_v1/views/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  initializeApp(() => runApp(const CalculatorApp()));
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}

