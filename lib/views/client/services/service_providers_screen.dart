import 'package:flutter/material.dart';

import 'service_details_screen.dart';

import 'widgets/provider_card.dart';
import 'widgets/provider_filter_bar.dart';
import 'widgets/provider_search_bar.dart';

class ServiceProvidersScreen extends StatefulWidget {
  const ServiceProvidersScreen({
    super.key,
  });

  @override
  State<ServiceProvidersScreen> createState() =>
      _ServiceProvidersScreenState();
}

class _ServiceProvidersScreenState
    extends State<ServiceProvidersScreen> {
  final TextEditingController searchController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    final service =
        ModalRoute.of(context)
            ?.settings
            .arguments
            ?.toString() ??
            "Prestataires";

    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
        elevation: 0,
        title: Text(service),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            ProviderSearchBar(
              controller: searchController,
            ),

            const SizedBox(height: 15),

            const ProviderFilterBar(),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const ServiceDetailsScreen(),
                        ),
                      );
                    },
                    child: const ProviderCard(
                      nom: "Jean Mavoungou",
                      metier: "Plombier",
                      note: "4.8",
                      localisation:
                      "Brazzaville, Bacongo",
                      prix: "5 000",
                      image:
                      "assets/images/providers/climaticien.png",
                    ),
                  ),

                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const ServiceDetailsScreen(),
                        ),
                      );
                    },
                    child: const ProviderCard(
                      nom: "Patrick Ndzi",
                      metier: "Électricien",
                      note: "4.7",
                      localisation:
                      "Pointe-Noire, Centre-ville",
                      prix: "7 000",
                      image:
                      "assets/images/providers/climaticien.png",
                    ),
                  ),

                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const ServiceDetailsScreen(),
                        ),
                      );
                    },
                    child: const ProviderCard(
                      nom: "Junior Okemba",
                      metier: "Réparateur TV",
                      note: "4.9",
                      localisation: "Dolisie",
                      prix: "4 000",
                      image:
                      "assets/images/providers/climaticien.png",
                    ),
                  ),

                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const ServiceDetailsScreen(),
                        ),
                      );
                    },
                    child: const ProviderCard(
                      nom: "Kevin Mpassi",
                      metier: "Climaticien",
                      note: "4.6",
                      localisation:
                      "Brazzaville, Talangaï",
                      prix: "8 000",
                      image:
                      "assets/images/providers/climaticien.png",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}