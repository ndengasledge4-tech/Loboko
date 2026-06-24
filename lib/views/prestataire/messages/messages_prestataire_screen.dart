import 'package:flutter/material.dart';

import 'widgets/conversation_tile.dart';
import 'package:loboko/views/prestataire/widgets/prestataire_bottom_navbar.dart';

class MessagesPrestataireScreen
    extends StatelessWidget {
  const MessagesPrestataireScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Messages"),

        backgroundColor:
        const Color(0xFF26B6A6),

        foregroundColor: Colors.white,
      ),

      bottomNavigationBar: const PrestataireBottomNavBar(
        currentIndex: 2,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          ConversationTile(
            name: "Sledge Ndenga",
            lastMessage:
            "Bonjour, êtes-vous disponible ?",
            time: "10:25",

            onTap: () {
              Navigator.pushNamed(
                context,
                "/chatPrestataire",
              );
            },
          ),

          ConversationTile(
            name: "Kevin Mpassi",
            lastMessage:
            "Merci pour votre travail.",
            time: "Hier",

            onTap: () {
              Navigator.pushNamed(
                context,
                "/chatPrestataire",
              );
            },
          ),
        ],
      ),
    );
  }
}