import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/styled_button.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.asset(
            'assets/dice-images/dice-$currentRoll.png',
          ),
        ),
        SikStyledButton(
          text: const SikStyledText('주사위 던지기'),
          width: double.infinity,
          height: 100,
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 155, 73),
              Color.fromARGB(255, 165, 255, 81),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          onPressed: rollDice,
        ),
        SikStyledButton(
          text: const SikStyledText('주사위 던지기'),
          width: double.infinity,
          height: 100,
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 7, 197, 255),
              Color.fromARGB(255, 249, 130, 255),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          onPressed: rollDice,
        ),
      ],
    );
  }
}
