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
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
