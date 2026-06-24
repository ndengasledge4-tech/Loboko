import 'package:flutter/material.dart';

class AppSettingsScreen
    extends StatefulWidget {
  const AppSettingsScreen({
    super.key,
  });

  @override
  State<AppSettingsScreen>
  createState() =>
      _AppSettingsScreenState();
}

class _AppSettingsScreenState
    extends State<AppSettingsScreen> {

  bool notifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Paramètres",
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          SwitchListTile(
            value: notifications,

            activeColor:
            const Color(0xFF26B6A6),

            title:
            const Text("Notifications"),

            onChanged: (value) {
              setState(() {
                notifications = value;
              });
            },
          ),

          SwitchListTile(
            value: darkMode,

            activeColor:
            const Color(0xFF26B6A6),

            title:
            const Text("Mode sombre"),

            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
          ),
        ],
      ),
    );
  }
}