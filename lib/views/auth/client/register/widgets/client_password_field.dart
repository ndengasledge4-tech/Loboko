import 'package:flutter/material.dart';

class ClientPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;

  const ClientPasswordField({
    super.key,
    required this.controller,
    required this.hint,
  });

  @override
  State<ClientPasswordField> createState() =>
      _ClientPasswordFieldState();
}

class _ClientPasswordFieldState
    extends State<ClientPasswordField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Color(0xFF26B6A6),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            obscure
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),
          onPressed: () {
            setState(() {
              obscure = !obscure;
            });
          },
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