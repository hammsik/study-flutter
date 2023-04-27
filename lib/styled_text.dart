import 'package:flutter/material.dart';

class SikStyledText extends StatelessWidget {
  final String text;

  const SikStyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            blurRadius: 10,
            color: Color.fromARGB(255, 255, 208, 154),
          ),
        ],
      ),
    );
  }
}
