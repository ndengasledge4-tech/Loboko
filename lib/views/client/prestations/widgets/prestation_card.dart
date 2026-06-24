import 'package:flutter/material.dart';

import 'prestation_status_badge.dart';

class PrestationCard extends StatelessWidget {
  final String service;
  final String prestataire;
  final String date;
  final String status;

  const PrestationCard({
    super.key,
    required this.service,
    required this.prestataire,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          "/prestationDetails",
        );
      },

      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor:
                  Color(0xFF26B6A6),

                  child: Icon(
                    Icons.build,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    service,
                    style: const TextStyle(
                      fontWeight:
                      FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),

                PrestationStatusBadge(
                  status: status,
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text(
              "Prestataire : $prestataire",
            ),

            const SizedBox(height: 5),

            Text(
              "Date : $date",
            ),
          ],
        ),
      ),
    );
  }
}