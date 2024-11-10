import 'package:calculator_app_v1/services/device_orientation.dart';
import 'package:calculator_app_v1/views/calculator_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  initializeApp(() => runApp(const ProviderScope(child: CalculatorApp())));
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: CalculatorView(),
    );
  }
}
