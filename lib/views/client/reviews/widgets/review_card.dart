import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final String comment;
  final int rating;
  final String date;

  const ReviewCard({
    super.key,
    required this.name,
    required this.comment,
    required this.rating,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Text(
                date,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            children: List.generate(
              rating,
                  (index) => const Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(comment),
        ],
      ),
    );
  }
}