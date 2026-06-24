import 'package:flutter/material.dart';

import 'dispute_details_screen.dart';
import 'widgets/dispute_card.dart';
import '../core/admin_scaffold.dart';

class DisputesScreen extends StatelessWidget {
  const DisputesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      title: "Gestion des litiges",

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          DisputeCard(
            client: "Paul Ndzi",
            prestataire: "Jean Makosso",
            sujet: "Travail non terminé",
            statut: "En cours",

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                  const DisputeDetailsScreen(),
                ),
              );
            },
          ),

          DisputeCard(
            client: "Merveille",
            prestataire: "Patrick Ndzi",
            sujet: "Retard important",
            statut: "Résolu",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}