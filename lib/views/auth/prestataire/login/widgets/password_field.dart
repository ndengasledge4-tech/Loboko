import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,

      decoration: InputDecoration(
        hintText: "Mot de passe",

        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Color(0xFF26B6A6),
        ),

        suffixIcon: const Icon(
          Icons.visibility_off_outlined,
        ),

        filled: true,
        fillColor: const Color(0xFFF5F7FA),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Color(0xFF26B6A6),
          ),
        ),
      ),
    );
  }
}