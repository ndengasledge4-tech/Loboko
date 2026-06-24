import 'package:flutter/material.dart';

class OnboardingLogoPage extends StatelessWidget {
  const OnboardingLogoPage({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const SizedBox(height: 40),

              /// LOGO
              Image.asset(
                "assets/images/onboarding_logo_page.png",
                height: 280,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 40),

              /// TITRE
              const Text(
                "Trouver le bon prestataire,\nau bon moment",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 18),

              /// DESCRIPTION
              Text(
                "Loboko vous connecte rapidement aux meilleurs professionnels près de chez vous.",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 30),

              /// BADGES
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,

                children: [

                  _badge(
                    Icons.verified,
                    "Prestataires vérifiés",
                  ),

                  _badge(
                    Icons.flash_on,
                    "Service rapide",
                  ),

                  _badge(
                    Icons.security,
                    "Paiement sécurisé",
                  ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _badge(
      IconData icon,
      String text,
      ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: const Color(0xFF26B6A6)
            .withOpacity(0.10),

        borderRadius: BorderRadius.circular(30),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [

          Icon(
            icon,
            size: 18,
            color: const Color(0xFF26B6A6),
          ),

          const SizedBox(width: 6),

          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF26B6A6),
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}