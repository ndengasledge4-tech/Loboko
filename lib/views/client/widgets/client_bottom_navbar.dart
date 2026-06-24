import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class ClientBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const ClientBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  void _navigate(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushNamed(
          context,
          "/home",
        );
        break;

      case 1:
        Navigator.pushNamed(
          context,
          "/services",
        );
        break;

      case 2:
        Navigator.pushNamed(
          context,
          "/messages",
        );
        break;

      case 3:
        Navigator.pushNamed(
          context,
          "/prestations",
        );
        break;

      case 4:
        Navigator.pushNamed(
          context,
          "/profile",
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,

      type: BottomNavigationBarType.fixed,

      selectedItemColor: const Color(
        0xFF26B6A6,
      ),

      unselectedItemColor: Colors.grey,

      onTap: (index) {
        _navigate(context, index);
      },

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home),
          label: "Accueil",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.category),
          label: "Services",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.message),
          label: "Messages",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.calendar),
          label: "Prestations",
        ),

        BottomNavigationBarItem(
          icon: Icon(Iconsax.profile_circle),
          label: "Profil",
        ),
      ],
    );
  }
}