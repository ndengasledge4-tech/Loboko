import 'package:flutter/material.dart';

import 'widgets/prestataire_card.dart';

class RejectedPrestatairesScreen extends StatelessWidget {
  const RejectedPrestatairesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          "Prestataires refusés",
          style: TextStyle(
            color: Color(0xFF1E3A5F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          PrestataireCard(
            nom: "Inconnu Test",
            service: "Maçon",
            telephone: "+242 06 000 00 00",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}