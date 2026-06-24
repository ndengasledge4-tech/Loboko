import 'package:flutter/material.dart';

class ServicesPrestataireScreen extends StatelessWidget {
  const ServicesPrestataireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Mes services"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          ListTile(
            leading: Icon(Icons.build),
            title: Text("Plomberie"),
          ),

          ListTile(
            leading: Icon(Icons.electrical_services),
            title: Text("Électricité"),
          ),
        ],
      ),
    );
  }
}