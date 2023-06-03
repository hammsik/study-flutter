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
      this.width = double.infinity,
      this.height = 20,
      this.borderRadius,
      this.gradient = const LinearGradient(
        colors: [
          Colors.cyan,
          Color.fromARGB(255, 249, 130, 255),
        ],
      ),
      super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: text,
      ),
    );
  }
}
