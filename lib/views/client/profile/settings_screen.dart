import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: ListView(
        children: const [

          SwitchListTile(
            value: true,
            onChanged: null,
            title: Text(
              "Notifications",
            ),
          ),

          ListTile(
            leading: Icon(Icons.lock),
            title: Text(
              "Modifier le mot de passe",
            ),
          ),

          ListTile(
            leading: Icon(Icons.language),
            title: Text(
              "Langue",
            ),
          ),
        ],
      ),
    );
  }
}