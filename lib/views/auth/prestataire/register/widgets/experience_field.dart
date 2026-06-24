import 'package:flutter/material.dart';

class ExperienceField extends StatelessWidget {
  const ExperienceField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,

      decoration: InputDecoration(
        hintText: "Années d'expérience",

        prefixIcon: const Icon(
          Icons.workspace_premium_outlined,
          color: Color(0xFF26B6A6),
        ),

        filled: true,
        fillColor: const Color(0xFFF5F7FA),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}