import 'package:flutter/material.dart';

class RevenueStats extends StatelessWidget {
  const RevenueStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFF26B6A6),
        borderRadius: BorderRadius.circular(20),
      ),

      child: const Column(
        children: [

          Text(
            "Revenus du mois",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),

          SizedBox(height: 10),

          Text(
            "350 000 FCFA",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}