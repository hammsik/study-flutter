import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

class SikGradientContainer extends StatelessWidget {
  const SikGradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 57, 255, 156),
          ],
          begin: Alignment.topLeft,
        ),
      ),
      child: const Center(
        child: SikStyledText("메이플스토리"),
      ),
    );
  }
}
