import 'package:flutter/material.dart';

class ProviderSearchBar extends StatelessWidget {
  final TextEditingController controller;

  const ProviderSearchBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      decoration: InputDecoration(
        hintText: "Rechercher un service",

        prefixIcon: const Icon(
          Icons.search,
        ),

        filled: true,
        fillColor: Colors.white,

        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}