import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [

        const CircleAvatar(
          radius: 28,
          backgroundColor: Color(0xFF26B6A6),
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
        ),

        const SizedBox(width: 15),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(
                "Bonjour Jean 👋",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 4),

              Text(
                "Disponible",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        IconButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              "/profilPrestataire",
            );
          },
          icon: const Icon(
            Icons.settings,
          ),
        ),
      ],
    );
  }
}