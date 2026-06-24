import 'package:flutter/material.dart';

import 'widgets/service_grid.dart';
import 'package:loboko/views/client/widgets/client_bottom_navbar.dart';


class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: const Text(
          "Tous les services",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      bottomNavigationBar: const ClientBottomNavBar(
        currentIndex: 1,
      ),

      body: const Padding(
        padding: EdgeInsets.all(20),
        child: ServiceGrid(),
      ),
    );
  }
}