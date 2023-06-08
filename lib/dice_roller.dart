import 'package:flutter/material.dart';
import 'package:first_app/styled_button.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String diceImage = 'assets/dice-images/dice-1.png';
  int cnt = 0;

  void rollDice() {
    setState(() {
      cnt = (cnt + 1) % 6;
      diceImage = 'assets/dice-images/dice-' + (cnt + 1).toString() + '.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.asset(
            diceImage,
          ),
        ),
        SikStyledButton(
          text: const Text(
            "변준형!!!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          width: 200,
          borderRadius: BorderRadius.circular(20),
          onPressed: rollDice,
        ),
      ],
    );
  }
}
