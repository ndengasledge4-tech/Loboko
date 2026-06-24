import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  Widget buildCard(
      String value,
      String title,
      IconData icon,
      ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),

        child: Column(
          children: [

            Icon(
              icon,
              color: const Color(0xFF26B6A6),
            ),

            const SizedBox(height: 8),

            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        buildCard(
          "12",
          "Réservations",
          Icons.calendar_month,
        ),

        const SizedBox(width: 10),

        buildCard(
          "8",
          "Favoris",
          Icons.favorite,
        ),

        const SizedBox(width: 10),

        buildCard(
          "4.8",
          "Avis",
          Icons.star,
        ),
      ],
    );
  }
}