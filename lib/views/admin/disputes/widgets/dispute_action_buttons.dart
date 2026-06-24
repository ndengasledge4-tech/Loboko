import 'package:flutter/material.dart';

class DisputeActionButtons extends StatelessWidget {
  final VoidCallback onResolve;
  final VoidCallback onReject;

  const DisputeActionButtons({
    super.key,
    required this.onResolve,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: ElevatedButton.icon(
            onPressed: onResolve,

            icon: const Icon(Icons.check),

            label: const Text(
              "Résoudre",
            ),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
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
            onPressed: onReject,

            icon: const Icon(Icons.close),

            label: const Text(
              "Rejeter",
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