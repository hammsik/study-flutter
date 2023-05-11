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
      this.height = 40,
      this.borderRadius,
      this.gradient = const LinearGradient(
        colors: [Colors.cyan, Colors.indigo],
      ),
      super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: text,
      ),
    );
  }
}
