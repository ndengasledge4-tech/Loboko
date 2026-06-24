import 'package:flutter/material.dart';

import 'widgets/user_actions.dart';

class ClientDetailsScreen extends StatelessWidget {
  const ClientDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: const Text(
          "Détails Client",
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
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Paul Ndzi",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "paul@gmail.com",
              ),
            ),

            const ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "+242 06 123 45 67",
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