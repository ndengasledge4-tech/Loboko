import 'package:flutter/material.dart';

class StatsCards extends StatelessWidget {
  const StatsCards({super.key});

  Widget buildCard(
      String title,
      String value,
      IconData icon,
      ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          children: [

            Icon(
              icon,
              size: 30,
              color: const Color(0xFF26B6A6),
            ),

            const SizedBox(height: 10),

            Text(
              value,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              title,
              textAlign: TextAlign.center,
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
          "Note moyenne",
          "4.8",
          Icons.star,
        ),

        const SizedBox(width: 10),

        buildCard(
          "Missions",
          "18",
          Icons.assignment,
        ),

        const SizedBox(width: 10),

        buildCard(
          "Revenus",
          "250K",
          Icons.payments,
        ),
      ],
    );
  }
}