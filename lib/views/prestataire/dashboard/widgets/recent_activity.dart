import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        _activityTile(
          "Réparation TV",
          "Aujourd'hui à 14h",
          Colors.orange,
        ),

        const SizedBox(height: 12),

        _activityTile(
          "Installation Clim",
          "Demain à 10h",
          Colors.blue,
        ),

        const SizedBox(height: 12),

        _activityTile(
          "Dépannage Frigo",
          "Vendredi à 15h",
          Colors.green,
        ),
      ],
    );
  }

  Widget _activityTile(
      String title,
      String date,
      Color color,
      ) {
    return Container(
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [

          CircleAvatar(
            backgroundColor:
            color.withOpacity(0.15),

            child: Icon(
              Icons.home_repair_service,
              color: color,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(date),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),

            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius:
              BorderRadius.circular(20),
            ),

            child: const Text(
              "En cours",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}