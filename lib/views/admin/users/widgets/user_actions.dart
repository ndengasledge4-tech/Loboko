import 'package:flutter/material.dart';

class UserActions extends StatelessWidget {
  final VoidCallback onSuspend;
  final VoidCallback onDelete;

  const UserActions({
    super.key,
    required this.onSuspend,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: ElevatedButton.icon(
            onPressed: onSuspend,

            icon: const Icon(Icons.block),

            label: const Text(
              "Suspendre",
            ),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,

              foregroundColor: Colors.white,

              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(14),
              ),
            ),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: ElevatedButton.icon(
            onPressed: onDelete,

            icon: const Icon(Icons.delete),

            label: const Text(
              "Supprimer",
            ),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,

              foregroundColor: Colors.white,

              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}