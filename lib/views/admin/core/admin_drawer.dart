import 'package:flutter/material.dart';

import 'widgets/drawer_header.dart';
import 'widgets/drawer_item.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [

          const AdminDrawerHeader(),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,

              children: [

                DrawerItem(
                  icon: Icons.dashboard,
                  title: "Dashboard",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/adminDashboard",
                    );
                  },
                ),

                DrawerItem(
                  icon: Icons.engineering,
                  title: "Prestataires",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/pendingPrestataires",
                    );
                  },
                ),

                DrawerItem(
                  icon: Icons.people,
                  title: "Utilisateurs",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/users",
                    );
                  },
                ),

                DrawerItem(
                  icon: Icons.gavel,
                  title: "Litiges",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/disputes",
                    );
                  },
                ),

                DrawerItem(
                  icon: Icons.bar_chart,
                  title: "Rapports",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/reports",
                    );
                  },
                ),

                DrawerItem(
                  icon: Icons.notifications,
                  title: "Notifications",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/notifications",
                    );
                  },
                ),

                DrawerItem(
                  icon: Icons.history,
                  title: "Activités",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/activityLogs",
                    );
                  },
                ),

                DrawerItem(
                  icon: Icons.settings,
                  title: "Paramètres",

                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/adminProfile",
                    );
                  },
                ),
              ],
            ),
          ),

          const Divider(),

          DrawerItem(
            icon: Icons.logout,
            title: "Déconnexion",

            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/loginAdmin",
                    (route) => false,
              );
            },
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }
}