import 'package:flutter/material.dart';
import 'widgets/demande_card.dart';

class DemandesScreen extends StatelessWidget {
  const DemandesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Demandes reçues"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          DemandeCard(
            service: "Réparation TV",
            budget: "15 000 FCFA",
          ),

          SizedBox(height: 15),

          DemandeCard(
            service: "Installation Clim",
            budget: "20 000 FCFA",
          ),
        ],
      ),
    );
  }
}