import 'package:flutter/material.dart';

import 'widgets/login_form.dart';

class LoginClientScreen extends StatelessWidget {
  const LoginClientScreen({super.key});

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
          "Connexion",
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

              const SizedBox(height: 20),

              Image.asset(
                "assets/images/logo.png",
                height: 80,
              ),

              const SizedBox(height: 20),

              const Text(
                "Bienvenue sur Loboko",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "Connectez-vous pour accéder à votre compte",
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 35),

              const LoginForm(),

              const SizedBox(height: 25),

              const Text(
                "OU",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 52,

                child: OutlinedButton.icon(
                  onPressed: () {},

                  icon: const Icon(
                    Icons.g_mobiledata,
                    color: Colors.red,
                    size: 30,
                  ),

                  label: const Text(
                    "Continuer avec Google",
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),

                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  const Text(
                    "Pas encore de compte ?",
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/registerClientStep1",
                      );
                    },

                    child: const Text(
                      "S'inscrire",
                      style: TextStyle(
                        color: Color(0xFF26B6A6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}