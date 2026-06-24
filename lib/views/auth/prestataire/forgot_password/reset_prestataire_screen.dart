import 'package:flutter/material.dart';

class ResetPrestataireScreen extends StatelessWidget {
  const ResetPrestataireScreen({super.key});

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
          "Nouveau mot de passe",
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
                  Icons.lock_open,
                  size: 60,
                  color: Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Créer un nouveau mot de passe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Choisissez un mot de passe sécurisé pour protéger votre compte prestataire.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 35),

              TextFormField(
                obscureText: true,

                decoration: InputDecoration(
                  hintText: "Nouveau mot de passe",

                  prefixIcon: const Icon(
                    Icons.lock_outline,
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

              const SizedBox(height: 20),

              TextFormField(
                obscureText: true,

                decoration: InputDecoration(
                  hintText:
                  "Confirmer le mot de passe",

                  prefixIcon: const Icon(
                    Icons.lock_outline,
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

              const SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/loginPrestataire",
                          (route) => false,
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
                    "Enregistrer",
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