import 'package:flutter/material.dart';

class DemandeDetailsScreen extends StatelessWidget {
  const DemandeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Détails demande"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Réparation TV",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text("Client : Paul Dupont"),
            const Text("Budget : 15 000 FCFA"),
            const Text("Adresse : Yaoundé"),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/missionAccepted",
                  );
                },
                child: const Text("Accepter"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}