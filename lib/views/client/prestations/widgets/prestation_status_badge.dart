import 'package:flutter/material.dart';

class PrestationStatusBadge extends StatelessWidget {
  final String status;

  const PrestationStatusBadge({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color color;

    switch (status) {
      case "Terminée":
        color = Colors.green;
        break;

      case "En cours":
        color = Colors.orange;
        break;

      case "Annulée":
        color = Colors.red;
        break;

      default:
        color = Colors.blue;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),

      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(30),
      ),

      child: Text(
        status,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}