import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          "/search",
        );
      },
      borderRadius: BorderRadius.circular(18),
      child: Ink(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const TextField(
          readOnly: true, // Bloque l'ouverture du clavier
          enabled: false,  // Désactive l'interaction directe avec le texte
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: "Rechercher un service",
            hintStyle: TextStyle(color: Colors.grey), // Optionnel : pour garder le texte visible si disabled
          ),
        ),
      ),
    );
  }
}
