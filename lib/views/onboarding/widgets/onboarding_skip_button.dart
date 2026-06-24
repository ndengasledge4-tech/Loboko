import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnboardingSkipButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,

      child: const Text(
        "Passer",
        style: TextStyle(
          color: Color(0xFF26B6A6),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}