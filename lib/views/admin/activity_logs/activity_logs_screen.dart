import 'package:flutter/material.dart';

import 'widgets/activity_log_card.dart';
import 'widgets/activity_log_header.dart';

class ActivityLogsScreen extends StatelessWidget {
  const ActivityLogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          "Journal d'activités",
          style: TextStyle(
            color: Color(0xFF1E3A5F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          ActivityLogHeader(),

          ActivityLogCard(
            icon: Icons.person_add,
            color: Colors.green,
            title: "Nouveau client inscrit",
            subtitle:
            "Jean Mavoungou a créé un compte",
            time: "Il y a 5 min",
          ),

          ActivityLogCard(
            icon: Icons.verified,
            color: Color(0xFF26B6A6),
            title: "Prestataire validé",
            subtitle:
            "Entreprise BTP Congo validée",
            time: "Il y a 20 min",
          ),

          ActivityLogCard(
            icon: Icons.gavel,
            color: Colors.orange,
            title: "Litige créé",
            subtitle:
            "Nouvelle réclamation signalée",
            time: "Il y a 45 min",
          ),

          ActivityLogCard(
            icon: Icons.block,
            color: Colors.red,
            title: "Utilisateur suspendu",
            subtitle:
            "Compte suspendu par l'administrateur",
            time: "Aujourd'hui 09:15",
          ),

          ActivityLogCard(
            icon: Icons.notifications,
            color: Colors.blue,
            title: "Notification envoyée",
            subtitle:
            "Campagne promotionnelle envoyée",
            time: "Aujourd'hui 08:30",
          ),

          ActivityLogCard(
            icon: Icons.payment,
            color: Colors.purple,
            title: "Paiement effectué",
            subtitle:
            "Transaction validée avec succès",
            time: "Hier",
          ),
        ],
      ),
    );
  }
}