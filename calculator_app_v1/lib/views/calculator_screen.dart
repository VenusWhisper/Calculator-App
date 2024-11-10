import 'package:calculator_app_v1/data/providers.dart';
import 'package:calculator_app_v1/views/button_builder.dart';
import 'package:calculator_app_v1/views/display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorScreen extends ConsumerWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var display = ref.watch(displayProvider);
    //var history = ref.watch(historyProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 3, 74, 67),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // display panel
          displayWidget(display),

          // calculator buttons grid
          buttonBuilder(ref),
        ],
      ),
    );
  }
}
