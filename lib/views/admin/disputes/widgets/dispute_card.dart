import 'package:flutter/material.dart';

class DisputeCard extends StatelessWidget {
  final String client;
  final String prestataire;
  final String sujet;
  final String statut;
  final VoidCallback onTap;

  const DisputeCard({
    super.key,
    required this.client,
    required this.prestataire,
    required this.sujet,
    required this.statut,
    required this.onTap,
  });

  Color get statusColor {
    switch (statut) {
      case "En cours":
        return Colors.orange;
      case "Résolu":
        return Colors.green;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                const Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.red,
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: Text(
                    sujet,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),

                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(.15),
                    borderRadius:
                    BorderRadius.circular(20),
                  ),

                  child: Text(
                    statut,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Text("Client : $client"),

            const SizedBox(height: 5),

            Text("Prestataire : $prestataire"),
          ],
        ),
      ),
    );
  }
}