import 'package:flutter/material.dart';

class ClientNameField extends StatelessWidget {
  final TextEditingController controller;

  const ClientNameField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: "Nom complet",
        prefixIcon: const Icon(
          Icons.person_outline,
          color: Color(0xFF26B6A6),
        ),
        filled: true,
        fillColor: const Color(0xFFF5F7FA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}