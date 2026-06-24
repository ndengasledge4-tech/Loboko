import 'package:flutter/material.dart';

class OnboardingImagePage extends StatelessWidget {
  const OnboardingImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            /// IMAGE
            Image.asset(
              "assets/images/onboarding_image_page.png",
              height: 280,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 40),

            /// TITRE
            const Text(
              "Trouvez un prestataire rapidement",
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E3A5F),
              ),
            ),

            const SizedBox(height: 15),

            /// DESCRIPTION
            Text(
              "Parcourez des professionnels qualifiés près de chez vous et réservez en quelques clics.",
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 30),

            /// PETITS INDICATEURS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                _featureChip(
                  Icons.location_on,
                  "Proche",
                ),

                const SizedBox(width: 10),

                _featureChip(
                  Icons.verified,
                  "Vérifié",
                ),

                const SizedBox(width: 10),

                _featureChip(
                  Icons.flash_on,
                  "Rapide",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _featureChip(
      IconData icon,
      String text,
      ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
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
            size: 16,
            color: const Color(0xFF26B6A6),
          ),

          const SizedBox(width: 5),

          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF26B6A6),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}