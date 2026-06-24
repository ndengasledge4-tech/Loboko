import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const CircleAvatar(
          radius: 45,
          backgroundColor:
          Color(0xFF26B6A6),

          child: Icon(
            Icons.admin_panel_settings,
            size: 45,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 15),

        const Text(
          "Administrateur",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5),

        Text(
          "admin@loboko.com",
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}