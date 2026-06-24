import 'package:flutter/material.dart';

import 'widgets/prestation_history_tile.dart';
import 'widgets/prestation_status_badge.dart';

class PrestationDetailsScreen
    extends StatelessWidget {
  const PrestationDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text(
          "Détails prestation",
        ),

        backgroundColor:
        const Color(0xFF26B6A6),

        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
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

                children: [

                  const Text(
                    "Plomberie",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const PrestationStatusBadge(
                    status: "Terminée",
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Prestataire : Jean Mavoungou",
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Date : 10 Juin 2026",
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Montant : 15 000 FCFA",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Historique",
              style: TextStyle(
                fontWeight:
                FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 15),

            const PrestationHistoryTile(
              title:
              "Réservation créée",
              date:
              "10 Juin 2026 - 08h00",
            ),

            const PrestationHistoryTile(
              title:
              "Prestataire accepté",
              date:
              "10 Juin 2026 - 08h30",
            ),

            const PrestationHistoryTile(
              title:
              "Intervention effectuée",
              date:
              "10 Juin 2026 - 11h00",
            ),

            const PrestationHistoryTile(
              title:
              "Mission terminée",
              date:
              "10 Juin 2026 - 12h00",
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  backgroundColor:
                  const Color(
                    0xFF26B6A6,
                  ),
                ),

                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/review",
                  );
                },

                child: const Text(
                  "Laisser un avis",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}