import 'package:flutter/material.dart';

class ForgotPrestataireScreen extends StatelessWidget {
  const ForgotPrestataireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF26B6A6),
          ),
        ),

        title: const Text(
          "Mot de passe oublié",
          style: TextStyle(
            color: Color(0xFF26B6A6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),

          child: Column(
            children: [

              const SizedBox(height: 30),

              Container(
                width: 120,
                height: 120,

                decoration: BoxDecoration(
                  color: const Color(0xFF26B6A6)
                      .withOpacity(0.10),
                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.lock_reset,
                  size: 60,
                  color: Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Réinitialiser votre mot de passe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Entrez votre numéro ou votre adresse e-mail pour recevoir un code de réinitialisation.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 35),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Téléphone ou Email",

                  prefixIcon: const Icon(
                    Icons.person_outline,
                    color: Color(0xFF26B6A6),
                  ),

                  filled: true,
                  fillColor: const Color(0xFFF5F7FA),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/resetPrestataire",
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xFF26B6A6),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(18),
                    ),
                  ),

                  child: const Text(
                    "Envoyer le code",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}