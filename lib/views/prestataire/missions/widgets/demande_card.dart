import 'package:flutter/material.dart';

class DemandeCard extends StatelessWidget {
  final String service;
  final String budget;

  const DemandeCard({
    super.key,
    required this.service,
    required this.budget,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              service,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 10),

            Text("Budget : $budget"),

            const SizedBox(height: 15),

            Row(
              children: [

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Refuser"),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/demandeDetails",
                      );
                    },
                    child: const Text("Voir"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}