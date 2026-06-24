import 'package:flutter/material.dart';

class AvailabilitySwitch extends StatefulWidget {
  const AvailabilitySwitch({super.key});

  @override
  State<AvailabilitySwitch> createState() =>
      _AvailabilitySwitchState();
}

class _AvailabilitySwitchState
    extends State<AvailabilitySwitch> {

  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [

          const Expanded(
            child: Text(
              "Recevoir les missions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Switch(
            value: isAvailable,
            activeColor: const Color(0xFF26B6A6),

            onChanged: (value) {
              setState(() {
                isAvailable = value;
              });
            },
          ),
        ],
      ),
    );
  }
}