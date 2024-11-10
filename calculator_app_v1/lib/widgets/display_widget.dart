import 'package:flutter/material.dart';

Widget displayWidget(String result) {
  return Expanded(
            flex: 1, // takes 1 part of the screen
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              color: Colors.black12,
              child: Text(
                result,
                style: const TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
          );
}