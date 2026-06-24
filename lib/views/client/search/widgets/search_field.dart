import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,

          prefixIcon: Icon(
            Icons.search,
          ),

          hintText: "Plomberie, Électricité...",
        ),
      ),
    );
  }
}