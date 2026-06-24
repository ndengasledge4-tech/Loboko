import 'package:flutter/material.dart';

import 'widgets/revenue_card.dart';
import 'widgets/revenue_stats.dart';
import 'widgets/transaction_tile.dart';

import 'package:loboko/views/prestataire/widgets/prestataire_bottom_navbar.dart';

class RevenusScreen extends StatelessWidget {
  const RevenusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Mes revenus"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      bottomNavigationBar: const PrestataireBottomNavBar(
        currentIndex: 3,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const RevenueStats(),

            const SizedBox(height: 20),

            Row(
              children: const [

                RevenueCard(
                  title: "Aujourd'hui",
                  amount: "25K",
                  icon: Icons.today,
                ),

                SizedBox(width: 10),

                RevenueCard(
                  title: "Missions",
                  amount: "48",
                  icon: Icons.assignment,
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Transactions récentes",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            TransactionTile(
              client: "Sledge",
              service: "Plomberie",
              amount: "15 000 FCFA",
              date: "12 Juin",
            ),

            TransactionTile(
              client: "Kevin",
              service: "Électricité",
              amount: "25 000 FCFA",
              date: "10 Juin",
            ),

            TransactionTile(
              client: "Junior",
              service: "Climatisation",
              amount: "35 000 FCFA",
              date: "07 Juin",
            ),
          ],
        ),
      ),
    );
  }
}