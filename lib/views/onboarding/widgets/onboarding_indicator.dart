import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentIndex;
  final int count;

  const OnboardingIndicator({
    super.key,
    required this.currentIndex,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,

      children: List.generate(
        count,
            (index) => AnimatedContainer(
          duration:
          const Duration(milliseconds: 300),

          margin:
          const EdgeInsets.symmetric(
            horizontal: 4,
          ),

          width:
          currentIndex == index ? 10 : 7,

          height:
          currentIndex == index ? 10 : 7,

          decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color(0xFF26B6A6)
                : Colors.grey.shade400,

            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}