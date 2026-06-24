import 'package:flutter/material.dart';

import 'widgets/dispute_action_buttons.dart';

class DisputeDetailsScreen extends StatelessWidget {
  const DisputeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: const Text(
          "Détails du litige",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: const [

                  Text(
                    "Client",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text("Paul Ndzi"),

                  SizedBox(height: 20),

                  Text(
                    "Prestataire",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text("Jean Makosso"),

                  SizedBox(height: 20),

                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Le prestataire n'a pas terminé les travaux convenus malgré le paiement effectué.",
                  ),
                ],
              ),
            ),

            const Spacer(),

            DisputeActionButtons(
              onResolve: () {
                Navigator.pop(context);
              },

              onReject: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}