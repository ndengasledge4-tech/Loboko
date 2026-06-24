import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),

      decoration: BoxDecoration(
        color: const Color(0xFF26B6A6),
        borderRadius: BorderRadius.circular(25),
      ),

      child: const Column(
        children: [

          CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage(
              "assets/images/profil.png",
            ),
          ),

          SizedBox(height: 12),

          Text(
            "Sledge Ndenga",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),

          SizedBox(height: 5),

          Text(
            "sledge@gmail.com",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}