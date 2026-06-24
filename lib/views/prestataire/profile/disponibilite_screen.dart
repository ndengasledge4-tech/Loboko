
import 'package:flutter/material.dart';

class DisponibiliteScreen extends StatefulWidget {
  const DisponibiliteScreen({super.key});

  @override
  State<DisponibiliteScreen> createState() =>
      _DisponibiliteScreenState();
}

class _DisponibiliteScreenState
    extends State<DisponibiliteScreen> {

  bool disponible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Disponibilité"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SwitchListTile(
          title: const Text("Disponible"),
          value: disponible,

          onChanged: (value) {
            setState(() {
              disponible = value;
            });
          },
        ),
      ),
    );
  }
}