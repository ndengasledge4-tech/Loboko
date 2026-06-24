import 'package:flutter/material.dart';

import 'widgets/dashboard_header.dart';
import 'widgets/stat_card.dart';
import 'widgets/activity_card.dart';
import '../core/admin_scaffold.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      title: "Tableau de bord",

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const DashboardHeader(),

            const SizedBox(height: 25),

            GridView.count(
              shrinkWrap: true,
              physics:
              const NeverScrollableScrollPhysics(),

              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1.1,

              children: const [

                StatCard(
                  title: "Clients",
                  value: "1 250",
                  icon: Icons.people,
                  color: Colors.blue,
                ),

                StatCard(
                  title: "Prestataires",
                  value: "480",
                  icon: Icons.handyman,
                  color: Colors.green,
                ),

                StatCard(
                  title: "En attente",
                  value: "27",
                  icon: Icons.pending_actions,
                  color: Colors.orange,
                ),

                StatCard(
                  title: "Litiges",
                  value: "4",
                  icon: Icons.report_problem,
                  color: Colors.red,
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Activités récentes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            const ActivityCard(
              title: "Nouveau prestataire inscrit",
              subtitle: "Jean Makosso attend validation",
              icon: Icons.person_add,
            ),

            const ActivityCard(
              title: "Nouveau litige",
              subtitle: "Réservation #2547 signalée",
              icon: Icons.warning_amber,
            ),

            const ActivityCard(
              title: "Paiement reçu",
              subtitle: "15 000 FCFA - Airtel Money",
              icon: Icons.payments,
            ),
          ],
        ),
      ),
    );
  }
}