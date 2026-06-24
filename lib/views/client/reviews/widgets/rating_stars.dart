import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  final Function(int)? onRatingChanged;

  const RatingStars({
    super.key,
    required this.rating,
    this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
            (index) => GestureDetector(
          onTap: onRatingChanged == null
              ? null
              : () => onRatingChanged!(index + 1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(
              Icons.star,
              color: index < rating ? Colors.amber : Colors.grey.shade300,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
