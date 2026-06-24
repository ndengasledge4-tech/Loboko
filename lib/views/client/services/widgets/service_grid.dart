import 'package:flutter/material.dart';

import 'service_card.dart';

class ServiceGrid extends StatelessWidget {
  const ServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        "title": "Plomberie",
        "icon": Icons.plumbing,
        "color": const Color(0xFFE3F2FD),
      },
      {
        "title": "Électricité",
        "icon": Icons.electrical_services,
        "color": const Color(0xFFFFF8E1),
      },
      {
        "title": "Peinture",
        "icon": Icons.format_paint,
        "color": const Color(0xFFF3E5F5),
      },
      {
        "title": "Ménage",
        "icon": Icons.cleaning_services,
        "color": const Color(0xFFE8F5E9),
      },
      {
        "title": "Climatisation",
        "icon": Icons.ac_unit,
        "color": const Color(0xFFE1F5FE),
      },
      {
        "title": "Jardinage",
        "icon": Icons.yard,
        "color": const Color(0xFFF1F8E9),
      },
      {
        "title": "Menuiserie",
        "icon": Icons.handyman,
        "color": const Color(0xFFFFF3E0),
      },
      {
        "title": "Maçonnerie",
        "icon": Icons.home_repair_service,
        "color": const Color(0xFFEFEBE9),
      },
    ];

    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),

      itemCount: services.length,

      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.95,
      ),

      itemBuilder: (context, index) {
        final service = services[index];

        return ServiceCard(
          title: service["title"] as String,
          icon: service["icon"] as IconData,
          color: service["color"] as Color,
        );
      },
    );
  }
}