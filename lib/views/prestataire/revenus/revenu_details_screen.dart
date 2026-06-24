import 'package:flutter/material.dart';

class RevenuDetailsScreen extends StatelessWidget {
  const RevenuDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Détail revenu"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  Text(
                    "Mission : Plomberie",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  SizedBox(height: 15),

                  Text("Client : Sledge"),

                  SizedBox(height: 10),

                  Text("Date : 12 Juin 2026"),

                  SizedBox(height: 10),

                  Text(
                    "Montant : 15 000 FCFA",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}