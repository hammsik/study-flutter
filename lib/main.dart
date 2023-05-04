import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SikGradientContainer(
            startColor: Color.fromARGB(255, 84, 150, 255),
            endColor: Color.fromARGB(255, 255, 255, 255)),
      ),
    ),
  );
}
