import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFF26B6A6),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [

          const CircleAvatar(
            radius: 45,
            backgroundColor: Colors.white,

            child: Icon(
              Icons.person,
              size: 50,
              color: Color(0xFF26B6A6),
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "Jean Mavoungou",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            "Plombier Professionnel",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: const Text(
              "⭐ 4.8 / 5",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF26B6A6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}