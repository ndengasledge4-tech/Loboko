import 'package:flutter/material.dart';

import 'widgets/dashboard_header.dart';
import 'widgets/stats_cards.dart';
import 'widgets/recent_activity.dart';
import 'widgets/availability_switch.dart';
import 'package:loboko/views/prestataire/widgets/prestataire_bottom_navbar.dart';

class DashboardPrestataireScreen extends StatelessWidget {
  const DashboardPrestataireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      bottomNavigationBar: const PrestataireBottomNavBar(
        currentIndex: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: const [

              DashboardHeader(),

              SizedBox(height: 20),

              AvailabilitySwitch(),

              SizedBox(height: 20),

              StatsCards(),

              SizedBox(height: 25),

              Text(
                "Activité récente",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              RecentActivity(),
            ],
          ),
        ),
      ),
    );
  }
}