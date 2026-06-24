import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const MessageBubble({
    super.key,
    required this.text,
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

        padding: const EdgeInsets.all(12),

        decoration: BoxDecoration(
          color: isMe
              ? const Color(0xFF26B6A6)
              : Colors.grey.shade300,

          borderRadius:
          BorderRadius.circular(15),
        ),

        child: Text(
          text,
          style: TextStyle(
            color:
            isMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}