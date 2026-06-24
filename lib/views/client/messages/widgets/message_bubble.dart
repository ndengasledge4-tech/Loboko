import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
      isMe
          ? Alignment.centerRight
          : Alignment.centerLeft,

      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ),

        padding: const EdgeInsets.all(14),

        constraints: const BoxConstraints(
          maxWidth: 280,
        ),

        decoration: BoxDecoration(
          color: isMe
              ? const Color(0xFF26B6A6)
              : Colors.white,

          borderRadius: BorderRadius.circular(18),
        ),

        child: Text(
          message,
          style: TextStyle(
            color:
            isMe ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}