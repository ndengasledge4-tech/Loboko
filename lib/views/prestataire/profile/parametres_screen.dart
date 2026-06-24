import 'package:flutter/material.dart';

class ParametresScreen extends StatelessWidget {
  const ParametresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Paramètres"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: ListView(
        children: [

          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text("Modifier mot de passe"),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Déconnexion"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}