import 'package:flutter/material.dart';

class OnboardingAdvantagesPage extends StatelessWidget {
  const OnboardingAdvantagesPage({super.key});

  Widget advantageCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [

          Container(
            width: 50,
            height: 50,

            decoration: BoxDecoration(
              color: const Color(0xFF26B6A6)
                  .withOpacity(0.10),

              borderRadius:
              BorderRadius.circular(14),
            ),

            child: Icon(
              icon,
              color: const Color(0xFF26B6A6),
              size: 26,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E3A5F),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),

          child: Column(
            children: [

              const SizedBox(height: 20),

              Container(
                width: 90,
                height: 90,

                decoration: BoxDecoration(
                  color: const Color(0xFF26B6A6)
                      .withOpacity(0.10),

                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.workspace_premium,
                  size: 45,
                  color: Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Pourquoi choisir Loboko ?",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Une plateforme simple, rapide et sécurisée pour trouver les meilleurs prestataires.",
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 30),

              advantageCard(
                icon: Icons.flash_on,
                title: "Rapide",
                subtitle:
                "Réservez un prestataire en quelques clics seulement.",
              ),

              advantageCard(
                icon: Icons.verified_user,
                title: "Fiable",
                subtitle:
                "Tous les prestataires sont vérifiés avant validation.",
              ),

              advantageCard(
                icon: Icons.lock,
                title: "Sécurisé",
                subtitle:
                "Vos paiements et vos données sont protégés.",
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}