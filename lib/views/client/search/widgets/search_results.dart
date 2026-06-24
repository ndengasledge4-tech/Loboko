import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        _serviceCard(
          context,
          "Plomberie",
          "15 prestataires disponibles",
        ),

        _serviceCard(
          context,
          "Électricité",
          "12 prestataires disponibles",
        ),

        _serviceCard(
          context,
          "Ménage",
          "20 prestataires disponibles",
        ),

        _serviceCard(
          context,
          "Peinture",
          "8 prestataires disponibles",
        ),
      ],
    );
  }

  Widget _serviceCard(
      BuildContext context,
      String title,
      String subtitle,
      ) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(
            Icons.home_repair_service,
          ),
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(subtitle),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),

        onTap: () {
          Navigator.pushNamed(
            context,
            "/services",
          );
        },
      ),
    );
  }
}