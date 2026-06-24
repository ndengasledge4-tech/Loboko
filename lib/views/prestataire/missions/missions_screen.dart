import 'package:flutter/material.dart';
import 'widgets/mission_card.dart';
import 'package:loboko/views/prestataire/widgets/prestataire_bottom_navbar.dart';


class MissionsScreen extends StatelessWidget {
  const MissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes missions"),
      ),

      bottomNavigationBar: const PrestataireBottomNavBar(
        currentIndex: 1,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          MissionCard(
            title: "Réparation TV",
            date: "22 Mai 2026",
            status: "En cours",
          ),

          MissionCard(
            title: "Installation Clim",
            date: "25 Mai 2026",
            status: "À venir",
          ),

          MissionCard(
            title: "Réparation Four",
            date: "28 Mai 2026",
            status: "Terminée",
          ),
        ],
      ),
    );
  }
}