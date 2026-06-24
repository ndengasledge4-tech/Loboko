import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegisterClientSuccessScreen extends StatelessWidget {
  const RegisterClientSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),

            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,

              children: [

                /// Animation
                Lottie.asset(
                  "assets/animations/success.json",
                  height: 220,
                  repeat: false,
                ),

                const SizedBox(height: 20),

                /// Cercle succès
                Container(
                  width: 90,
                  height: 90,

                  decoration: BoxDecoration(
                    color: Colors.green
                        .withOpacity(.12),

                    shape: BoxShape.circle,
                  ),

                  child: const Icon(
                    Icons.check_circle,
                    size: 60,
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Bienvenue sur Loboko 🎉",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 30,
                    fontWeight:
                    FontWeight.bold,
                    color: Color(0xFF1E3A5F),
                  ),
                ),

                const SizedBox(height: 15),

                Text(
                  "Votre compte a été créé avec succès.\nVous pouvez maintenant trouver rapidement les meilleurs prestataires près de chez vous.",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 50),

                SizedBox(
                  width: double.infinity,
                  height: 58,

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        "/home",
                            (route) => false,
                      );
                    },

                    style:
                    ElevatedButton.styleFrom(
                      backgroundColor:
                      const Color(
                        0xFF26B6A6,
                      ),

                      elevation: 0,

                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(
                          18,
                        ),
                      ),
                    ),

                    child: const Text(
                      "Commencer maintenant",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/home",
                          (route) => false,
                    );
                  },

                  child: const Text(
                    "Plus tard",
                    style: TextStyle(
                      color: Color(0xFF26B6A6),
                      fontWeight:
                      FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}