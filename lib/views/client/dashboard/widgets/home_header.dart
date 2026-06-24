import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF26B6A6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.location_on,
            color: Colors.white,
          ),

          const SizedBox(width: 10),

          const Expanded(
            child: Text(
              "Pointe-Noire",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Notifications
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.pushNamed(
                context,
                "/notifications",
              );
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.notifications,
                color: Colors.grey.shade700,
              ),
            ),
          ),

          const SizedBox(width: 10),

          // Profil
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.pushNamed(
                context,
                "/profile",
              );
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/profil.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}