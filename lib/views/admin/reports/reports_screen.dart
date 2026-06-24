import 'package:flutter/material.dart';

import 'widgets/revenue_card.dart';
import 'widgets/chart_card.dart';
import '../core/admin_scaffold.dart';


class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      title: "Rapports & Statistiques",

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const RevenueCard(
              title: "Chiffre d'affaires",
              value: "2 450 000 FCFA",
              icon: Icons.payments,
            ),

            const SizedBox(height: 15),

            const RevenueCard(
              title: "Réservations",
              value: "1 245",
              icon: Icons.calendar_month,
            ),

            const SizedBox(height: 15),

            const RevenueCard(
              title: "Prestataires",
              value: "356",
              icon: Icons.handyman,
            ),

            const SizedBox(height: 15),

            const RevenueCard(
              title: "Clients",
              value: "5 482",
              icon: Icons.people,
            ),

            const SizedBox(height: 25),

            const ChartCard(
              title: "Évolution des revenus",
            ),

            const SizedBox(height: 20),

            const ChartCard(
              title: "Réservations mensuelles",
            ),
          ],
        ),
      ),
    );
  }
}