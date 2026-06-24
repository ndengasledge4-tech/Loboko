import 'package:flutter/material.dart';

class SecurityField extends StatelessWidget {
  final String hint;

  const SecurityField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,

      decoration: InputDecoration(
        hintText: hint,

        filled: true,
        fillColor:
        const Color(0xFFF5F7FA),

        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}