import 'package:flutter/material.dart';

class AdminEmailField extends StatelessWidget {
  const AdminEmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email administrateur",
        prefixIcon: const Icon(
          Icons.admin_panel_settings_outlined,
          color: Color(0xFF1E3A5F),
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
            color: Color(0xFF1E3A5F),
          ),
        ),
      ),
    );
  }
}