import 'package:flutter/material.dart';

import '../services/widgets/provider_card.dart';
import '../services/widgets/provider_filter_bar.dart';
import '../services/widgets/provider_search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() =>
      _SearchScreenState();
}

class _SearchScreenState
    extends State<SearchScreen> {
  final TextEditingController
  searchController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: const Text(
          "Recherche",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: Padding(
        padding:
        const EdgeInsets.all(16),

        child: Column(
          children: [
            ProviderSearchBar(
              controller:
              searchController,
            ),

            const SizedBox(height: 15),

            const ProviderFilterBar(),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: const [
                  ProviderCard(
                    nom: "Jean Mavoungou",
                    metier: "Plombier",
                    note: "4.8",
                    localisation:
                    "Brazzaville",
                    prix: "5 000",
                    image:
                    "assets/images/providers/plombier.png",
                  ),

                  SizedBox(height: 15),

                  ProviderCard(
                    nom: "Patrick Ndzi",
                    metier:
                    "Électricien",
                    note: "4.7",
                    localisation:
                    "Pointe-Noire",
                    prix: "7 000",
                    image:
                    "assets/images/providers/electricien.png",
                  ),

                  SizedBox(height: 15),

                  ProviderCard(
                    nom: "Junior Okemba",
                    metier:
                    "Réparateur TV",
                    note: "4.9",
                    localisation:
                    "Dolisie",
                    prix: "4 000",
                    image:
                    "assets/images/providers/reparateur.png",
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