import 'package:flutter/material.dart';

class ConversationTile extends StatelessWidget {
  final String avatar;
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final bool isOnline;
  final VoidCallback onTap;

  const ConversationTile({
    super.key,
    required this.avatar,
    required this.name,
    required this.message,
    required this.time,
    required this.unreadCount,
    required this.isOnline,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      borderRadius:
      BorderRadius.circular(20),

      child: Container(
        padding:
        const EdgeInsets.all(15),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
          BorderRadius.circular(
            20,
          ),

          boxShadow: [
            BoxShadow(
              color:
              Colors.black.withOpacity(
                0.05,
              ),
              blurRadius: 10,
            ),
          ],
        ),

        child: Row(
          children: [

            Stack(
              children: [

                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  AssetImage(avatar),
                ),

                if (isOnline)
                  Positioned(
                    bottom: 0,
                    right: 0,

                    child: Container(
                      width: 14,
                      height: 14,

                      decoration:
                      BoxDecoration(
                        color: Colors.green,
                        shape:
                        BoxShape.circle,

                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  Text(
                    name,
                    style:
                    const TextStyle(
                      fontWeight:
                      FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    message,
                    maxLines: 1,
                    overflow:
                    TextOverflow.ellipsis,

                    style: TextStyle(
                      color:
                      Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: [

                Text(
                  time,
                  style: TextStyle(
                    color:
                    Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),

                const SizedBox(height: 8),

                if (unreadCount > 0)
                  Container(
                    padding:
                    const EdgeInsets.all(
                      6,
                    ),

                    decoration:
                    const BoxDecoration(
                      color:
                      Color(0xFF26B6A6),
                      shape:
                      BoxShape.circle,
                    ),

                    child: Text(
                      unreadCount
                          .toString(),

                      style:
                      const TextStyle(
                        color:
                        Colors.white,
                        fontSize: 11,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}