import 'package:flutter/material.dart';

class AvisClientsScreen extends StatelessWidget {
  const AvisClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Avis clients"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          ListTile(
            leading: Icon(Icons.star,color: Colors.amber),
            title: Text("Excellent travail"),
            subtitle: Text("Sledge"),
          ),

          ListTile(
            leading: Icon(Icons.star,color: Colors.amber),
            title: Text("Très professionnel"),
            subtitle: Text("Kevin"),
          ),
        ],
      ),
    );
  }
}