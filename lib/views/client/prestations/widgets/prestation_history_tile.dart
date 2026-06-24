import 'package:flutter/material.dart';

class PrestationHistoryTile extends StatelessWidget {
  final String title;
  final String date;

  const PrestationHistoryTile({
    super.key,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xFF26B6A6),

        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),

      title: Text(title),

      subtitle: Text(date),
    );
  }
}