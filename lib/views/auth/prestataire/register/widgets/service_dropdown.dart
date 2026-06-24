import 'package:flutter/material.dart';

class ServiceDropdown extends StatefulWidget {
  const ServiceDropdown({super.key});

  @override
  State<ServiceDropdown> createState() =>
      _ServiceDropdownState();
}

class _ServiceDropdownState
    extends State<ServiceDropdown> {

  String? selectedService;

  final List<String> services = [
    "Plombier",
    "Électricien",
    "Maçon",
    "Peintre",
    "Menuisier",
    "Mécanicien",
    "Coiffeur",
    "Informaticien",
    "Climatisation",
    "Agent d'entretien",
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedService,

      decoration: InputDecoration(
        hintText: "Choisir un service",

        prefixIcon: const Icon(
          Icons.handyman_outlined,
          color: Color(0xFF26B6A6),
        ),

        filled: true,
        fillColor: const Color(0xFFF5F7FA),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),

      items: services.map((service) {
        return DropdownMenuItem(
          value: service,
          child: Text(service),
        );
      }).toList(),

      onChanged: (value) {
        setState(() {
          selectedService = value;
        });
      },
    );
  }
}