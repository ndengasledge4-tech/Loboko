import 'package:flutter/material.dart';

class ProviderFilterBar extends StatelessWidget {
  const ProviderFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children: [

          _filterChip("Filtres"),
          _filterChip("Note"),
          _filterChip("Prix"),
          _filterChip("Distance"),
        ],
      ),
    );
  }

  Widget _filterChip(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),

      child: Chip(
        label: Text(text),

        backgroundColor:
        Colors.white,

        side: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}