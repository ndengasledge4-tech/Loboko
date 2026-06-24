import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class PrestataireBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const PrestataireBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  void _navigate(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(
          context,
          "/dashboardPrestataire",
        );
        break;

      case 1:
        Navigator.pushReplacementNamed(
          context,
          "/missions",
        );
        break;

      case 2:
        Navigator.pushReplacementNamed(
          context,
          "/messagesPrestataire",
        );
        break;

      case 3:
        Navigator.pushReplacementNamed(
          context,
          "/revenus",
        );
        break;

      case 4:
        Navigator.pushReplacementNamed(
          context,
          "/profilPrestataire",
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,

      type: BottomNavigationBarType.fixed,

      selectedItemColor: const Color(0xFF26B6A6),

      unselectedItemColor: Colors.grey,

      onTap: (index) {
        _navigate(context, index);
      },

      items: const [

        BottomNavigationBarItem(
          icon: Icon(Iconsax.home_hashtag),
          label: "Accueil",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.task_square),
          label: "Missions",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.message),
          label: "Messages",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.wallet_money),
          label: "Revenus",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.profile_circle),
          label: "Profil",
        ),
      ],
    );
  }
}