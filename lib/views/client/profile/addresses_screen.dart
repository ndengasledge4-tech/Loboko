import 'package:flutter/material.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes adresses"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Avenue Charles de Gaulle",
            ),
            subtitle: Text(
              "Pointe-Noire",
            ),
          ),
        ],
      ),
    );
  }
}