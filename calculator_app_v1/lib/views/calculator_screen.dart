import 'package:calculator_app_v1/data/button_logic.dart';
import 'package:calculator_app_v1/data/calculator_button.dart';
import 'package:calculator_app_v1/data/providers.dart';
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
          Expanded(
            flex: 1, // takes 1 part of the screen
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              color: Colors.black12,
              child: Text(
                display, // TODO insert your display logic here
                style: const TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
          ),

          // calculator buttons grid
          Expanded(
            flex: 4, // takes 4 parts of the screen
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: CalculatorButton.buttons.length,
              itemBuilder: (context, index) {
                return CalculatorButton(
                    label: CalculatorButton.buttons[index],
                    onPressed: () {
                      handleButtonPress(index, ref);
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
