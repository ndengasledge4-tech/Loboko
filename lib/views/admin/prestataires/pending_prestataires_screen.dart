import 'package:flutter/material.dart';

import 'prestataire_details_screen.dart';
import 'widgets/prestataire_card.dart';
import '../core/admin_scaffold.dart';

class PendingPrestatairesScreen extends StatelessWidget {
  const PendingPrestatairesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      title: "En attente de validation",

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          PrestataireCard(
            nom: "Jean Makosso",
            service: "Plombier",
            telephone: "+242 06 123 45 67",

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                  const PrestataireDetailsScreen(),
                ),
              );
            },
          ),

          PrestataireCard(
            nom: "Patrick Ndzi",
            service: "Electricien",
            telephone: "+242 05 654 98 76",

            onTap: () {},
          ),
        ],
      ),
    );
  }
}