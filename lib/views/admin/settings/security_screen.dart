import 'package:flutter/material.dart';

import 'widgets/security_field.dart';

class SecurityScreen
    extends StatelessWidget {
  const SecurityScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
        const Text("Sécurité"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SecurityField(
              hint:
              "Mot de passe actuel",
            ),

            const SizedBox(height: 15),

            const SecurityField(
              hint:
              "Nouveau mot de passe",
            ),

            const SizedBox(height: 15),

            const SecurityField(
              hint:
              "Confirmer le mot de passe",
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {},

                style:
                ElevatedButton.styleFrom(
                  backgroundColor:
                  const Color(
                      0xFF26B6A6),
                ),

                child: const Text(
                  "Mettre à jour",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}