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
          Color.fromARGB(255, 7, 197, 255),
          Color.fromARGB(255, 249, 130, 255),
        ],
      ),
      super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          minimumSize: const Size(double.infinity, 100),
        ),
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}
