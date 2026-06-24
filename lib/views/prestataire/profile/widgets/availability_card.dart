import 'package:flutter/material.dart';

class AvailabilityCard extends StatelessWidget {
  final bool isAvailable;
  final ValueChanged<bool> onChanged;

  const AvailabilityCard({
    super.key,
    required this.isAvailable,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Row(
        children: [

          Container(
            padding: const EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: isAvailable
                  ? Colors.green.withOpacity(0.15)
                  : Colors.red.withOpacity(0.15),

              borderRadius: BorderRadius.circular(12),
            ),

            child: Icon(
              isAvailable
                  ? Icons.check_circle
                  : Icons.cancel,

              color: isAvailable
                  ? Colors.green
                  : Colors.red,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                const Text(
                  "Disponibilité",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                Text(
                  isAvailable
                      ? "Disponible pour recevoir des missions"
                      : "Indisponible actuellement",

                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Switch(
            value: isAvailable,
            activeColor: const Color(0xFF26B6A6),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}