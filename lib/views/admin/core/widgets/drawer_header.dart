import 'package:flutter/material.dart';

class AdminDrawerHeader extends StatelessWidget {
  const AdminDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      color: const Color(0xFF26B6A6),

      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.admin_panel_settings,
              size: 35,
              color: Color(0xFF26B6A6),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Administrateur",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "admin@loboko.com",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}