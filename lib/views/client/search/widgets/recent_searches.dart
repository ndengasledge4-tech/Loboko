import 'package:flutter/material.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(
          "Recherches récentes",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 12),

        Wrap(
          spacing: 10,
          runSpacing: 10,

          children: const [

            Chip(
              label: Text("Plomberie"),
            ),

            Chip(
              label: Text("Ménage"),
            ),

            Chip(
              label: Text("Peinture"),
            ),
          ],
        ),
      ],
    );
  }
}