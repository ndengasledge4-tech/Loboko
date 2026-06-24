import 'package:flutter/material.dart';

class AddressField extends StatelessWidget {
  const AddressField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 3,

      decoration: InputDecoration(
        hintText: "Adresse complète",

        prefixIcon: const Icon(
          Icons.location_on_outlined,
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