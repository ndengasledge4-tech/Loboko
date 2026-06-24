import 'package:flutter/material.dart';

class ActivityLogHeader extends StatelessWidget {
  const ActivityLogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Text(
            "Historique des activités",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E3A5F),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "Suivez toutes les actions effectuées sur la plateforme.",
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}