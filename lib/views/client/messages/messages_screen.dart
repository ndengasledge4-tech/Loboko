import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'widgets/conversation_tile.dart';
import 'package:loboko/views/client/widgets/client_bottom_navbar.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,

        title: const Text(
          "Messages",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),

      bottomNavigationBar: const ClientBottomNavBar(
        currentIndex: 2,
      ),

      body: Column(
        children: [

          Container(
            width: double.infinity,

            decoration: const BoxDecoration(
              color: Color(0xFF26B6A6),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),

            child: const Padding(
              padding: EdgeInsets.fromLTRB(
                20,
                0,
                20,
                25,
              ),

              child: Column(
                children: [

                  Text(
                    "Discutez avec vos prestataires",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 15),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),

            child: TextField(
              decoration: InputDecoration(
                hintText:
                "Rechercher une conversation",

                prefixIcon:
                const Icon(Icons.search),

                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(
                    15,
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              children: [

                ConversationTile(
                  avatar:
                  "assets/images/avatar1.png",

                  name: "Jean Plombier",

                  message:
                  "Je suis en route.",

                  time: "10:25",

                  unreadCount: 2,

                  isOnline: true,

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                        const ChatScreen(
                          providerName:
                          "Jean Plombier",
                        ),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 15),

                ConversationTile(
                  avatar:
                  "assets/images/avatar2.png",

                  name:
                  "Paul Électricien",

                  message:
                  "Merci pour votre confiance",

                  time: "Hier",

                  unreadCount: 0,

                  isOnline: false,

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                        const ChatScreen(
                          providerName:
                          "Paul Électricien",
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}