import 'package:flutter/material.dart';

import 'security_screen.dart';
import 'app_settings_screen.dart';

import 'widgets/profile_header.dart';
import 'widgets/settings_tile.dart';
import 'widgets/settings_section.dart';
import '../core/admin_scaffold.dart';

class AdminProfileScreen
    extends StatelessWidget {
  const AdminProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      title: "Mon profil",

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const ProfileHeader(),

            const SizedBox(height: 25),

            SettingsSection(
              title: "Compte",

              child: Column(
                children: [

                  SettingsTile(
                    icon: Icons.security,
                    title: "Sécurité",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const SecurityScreen(),
                        ),
                      );
                    },
                  ),

                  SettingsTile(
                    icon: Icons.settings,
                    title: "Paramètres application",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const AppSettingsScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            SettingsSection(
              title: "Session",

              child: SettingsTile(
                icon: Icons.logout,
                color: Colors.red,
                title: "Déconnexion",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}