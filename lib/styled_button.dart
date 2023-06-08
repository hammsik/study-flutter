import 'package:flutter/material.dart';

class SikStyledButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final Widget text;
  final Gradient gradient;

  const SikStyledButton(
      {required this.onPressed,
      required this.text,
      required this.width,
      required this.height,
      this.borderRadius, // 수정 필요!
      this.gradient = const LinearGradient(
        colors: [
          Color.fromARGB(255, 0, 0, 0),
          Color.fromARGB(255, 0, 0, 0),
        ],
      ),
      super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0); // 수정필요
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: onPressed,
          child: text,
        ),
      ),
    );
  }
}
