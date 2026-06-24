import 'package:flutter/material.dart';

import 'widgets/user_actions.dart';

class UserPrestataireDetailsScreen
    extends StatelessWidget {
  const UserPrestataireDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: const Text(
          "Détails Prestataire",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const CircleAvatar(
              radius: 50,
              backgroundColor:
              Color(0xFF26B6A6),

              child: Icon(
                Icons.handyman,
                size: 50,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Jean Makosso",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const ListTile(
              leading: Icon(Icons.work),
              title: Text("Plombier"),
            ),

            const ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "+242 05 888 88 88",
              ),
            ),

            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text(
                "Pointe-Noire",
              ),
            ),

            const Spacer(),

            UserActions(
              onSuspend: () {},
              onDelete: () {},
            ),
          ],
        ),
      ),
    );
  }
}