import 'package:flutter/material.dart';
import 'mission_status_badge.dart';

class MissionCard extends StatelessWidget {
  final String title;
  final String date;
  final String status;

  const MissionCard({
    super.key,
    required this.title,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.build),
        ),

        title: Text(title),

        subtitle: Text(date),

        trailing: MissionStatusBadge(
          status: status,
        ),
      ),
    );
  }
}