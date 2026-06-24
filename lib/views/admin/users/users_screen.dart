import 'package:flutter/material.dart';

import 'widgets/user_card.dart';
import '../core/admin_scaffold.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      title: "Utilisateurs",

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          UserCard(
            nom: "Paul Ndzi",
            email: "paul@gmail.com",
            role: "Client",

            onTap: () {
              Navigator.pushNamed(
                context,
                "/clientDetails",
              );
            },
          ),

          UserCard(
            nom: "Jean Makosso",
            email: "jean@gmail.com",
            role: "Prestataire",

            onTap: () {
              Navigator.pushNamed(
                context,
                "/userPrestataireDetails",
              );
            },
          ),
        ],
      ),
    );
  }
}