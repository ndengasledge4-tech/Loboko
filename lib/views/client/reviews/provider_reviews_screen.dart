import 'package:flutter/material.dart';

import 'widgets/review_card.dart';

class ProviderReviewsScreen extends StatelessWidget {
  const ProviderReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Avis du prestataire"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          ReviewCard(
            name: "Sledge",
            comment:
            "Très professionnel et ponctuel.",
            rating: 5,
            date: "12 Juin",
          ),

          ReviewCard(
            name: "Kevin",
            comment:
            "Travail propre et rapide.",
            rating: 4,
            date: "08 Juin",
          ),

          ReviewCard(
            name: "Junior",
            comment:
            "Je recommande vivement.",
            rating: 5,
            date: "03 Juin",
          ),
        ],
      ),
    );
  }
}