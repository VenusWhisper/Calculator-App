import 'package:calculator_app_v1/data/button_logic.dart';
import 'package:calculator_app_v1/data/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Widget buttonBuilder(WidgetRef reference) {
  return Expanded(
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
                      handleButtonPress(index, reference);
                    });
              },
            ),
          );
}