import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/styled_button.dart';

// 런타임에 절대 바뀌지 않는, 컴파일 타임부터 잠겨있는 코드
// final은, 만약 어떤 클래스를 인스턴스화 해서 변수에 할당하는 것처럼, 컴파일 타임에는 적용되지 않지만, 런타임에 한 번 할당되면 더이상 바뀌지 않는 코드에 쓰임
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class SikGradientContainer extends StatelessWidget {
  final Color startColor, endColor;

  const SikGradientContainer(
      {required this.startColor, required this.endColor, super.key});
  const SikGradientContainer.purple({super.key})
      : startColor = Colors.deepPurple,
        endColor = Colors.indigo;

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-images/dice-3.png',
              width: 200,
            ),
            SikStyledButton(
              onPressed: () {},
              borderRadius: BorderRadius.circular(20),
              text: const SikStyledText("roll dice"),
            ),
          ],
        ),
      ),
    );
  }
}
