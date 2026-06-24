import 'package:flutter/material.dart';

import 'widgets/prestataire_card.dart';

class ValidatedPrestatairesScreen extends StatelessWidget {
  const ValidatedPrestatairesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          "Prestataires validés",
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
            nom: "Armel Mavoungou",
            service: "Menuisier",
            telephone: "+242 06 111 22 33",
            onTap: () {},
          ),

          PrestataireCard(
            nom: "Brice Ngoma",
            service: "Peintre",
            telephone: "+242 05 777 88 99",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}