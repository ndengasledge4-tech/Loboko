import 'package:flutter/material.dart';

import 'package:loboko/views/client/widgets/client_bottom_navbar.dart';

import 'widgets/profile_header.dart';
import 'widgets/stats_section.dart';
import 'widgets/profile_menu_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _logout(BuildContext context) async {

    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          title: const Text(
            "Déconnexion",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          content: const Text(
            "Voulez-vous vraiment vous déconnecter ?",
          ),

          actions: [

            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },

              child: const Text(
                "Annuler",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),

              onPressed: () {
                Navigator.pop(context, true);
              },

              child: const Text(
                "Déconnexion",
              ),
            ),
          ],
        );
      },
    );

    if (confirm == true) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        "/loginClient",
            (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      bottomNavigationBar: const ClientBottomNavBar(
        currentIndex: 4,
      ),

      appBar: AppBar(
        title: const Text("Mon Profil"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const ProfileHeader(),

            const SizedBox(height: 20),

            const StatsSection(),

            const SizedBox(height: 25),

            ProfileMenuTile(
              icon: Icons.edit,
              title: "Modifier le profil",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/editProfile",
                );
              },
            ),

            ProfileMenuTile(
              icon: Icons.location_on,
              title: "Mes adresses",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/addresses",
                );
              },
            ),

            ProfileMenuTile(
              icon: Icons.favorite,
              title: "Mes favoris",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/favorites",
                );
              },
            ),

            ProfileMenuTile(
              icon: Icons.settings,
              title: "Paramètres",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/settings",
                );
              },
            ),

            const SizedBox(height: 15),

            ProfileMenuTile(
              icon: Icons.logout,
              title: "Déconnexion",
              onTap: () {
                _logout(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}