import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  const ChatInput({
    super.key,
    required this.controller,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),

      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,

              decoration: InputDecoration(
                hintText: "Écrire un message...",
                filled: true,
                fillColor: Colors.white,

                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(30),

                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          CircleAvatar(
            backgroundColor:
            const Color(0xFF26B6A6),

            child: IconButton(
              icon: const Icon(
                Icons.send,
                color: Colors.white,
              ),

              onPressed: onSend,
            ),
          ),
        ],
      ),
    );
  }
}