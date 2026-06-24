import 'package:flutter/material.dart';

class ClientPhoneField extends StatelessWidget {
  final TextEditingController controller;

  const ClientPhoneField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: "Téléphone",
        prefixIcon: const Icon(
          Icons.phone_outlined,
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