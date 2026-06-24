import 'package:flutter/material.dart';

import 'widgets/chat_input.dart';
import 'widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  final String providerName;

  const ChatScreen({
    super.key,
    required this.providerName,
  });

  @override
  State<ChatScreen> createState() =>
      _ChatScreenState();
}

class _ChatScreenState
    extends State<ChatScreen> {

  final TextEditingController controller =
  TextEditingController();

  final List<Map<String, dynamic>> messages = [
    {
      "text": "Bonjour 👋",
      "isMe": false,
    },
    {
      "text": "Bonjour, êtes-vous disponible ?",
      "isMe": true,
    },
  ];

  void sendMessage() {
    if (controller.text.isEmpty) return;

    setState(() {
      messages.add({
        "text": controller.text,
        "isMe": true,
      });
    });

    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: Text(widget.providerName),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding:
              const EdgeInsets.all(20),

              itemCount: messages.length,

              itemBuilder: (context, index) {
                return MessageBubble(
                  message:
                  messages[index]["text"],
                  isMe:
                  messages[index]["isMe"],
                );
              },
            ),
          ),

          ChatInput(
            controller: controller,
            onSend: sendMessage,
          ),
        ],
      ),
    );
  }
}