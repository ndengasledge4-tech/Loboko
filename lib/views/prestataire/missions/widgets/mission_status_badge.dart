import 'package:flutter/material.dart';

class MissionStatusBadge extends StatelessWidget {
  final String status;

  const MissionStatusBadge({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {

    Color color = Colors.orange;

    switch (status) {
      case "En cours":
        color = Colors.green;
        break;

      case "À venir":
        color = Colors.blue;
        break;

      case "Terminée":
        color = Colors.grey;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}