import 'package:flutter/material.dart';

import 'widgets/admin_email_field.dart';
import 'widgets/admin_password_field.dart';
import 'widgets/login_button.dart';

class LoginAdminScreen extends StatelessWidget {
  const LoginAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),

          child: Column(
            children: [

              /// RETOUR
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },

                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFF1E3A5F),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// LOGO
              Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),

                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 30),

              /// TITRE
              const Text(
                "Administration Loboko",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 10),

              Text(
                "Connectez-vous pour gérer les utilisateurs, les prestataires et les activités de la plateforme.",
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 40),

              /// FORMULAIRE
              Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: Column(
                  children: [

                    const AdminEmailField(),

                    const SizedBox(height: 18),

                    const AdminPasswordField(),

                    const SizedBox(height: 12),

                    Align(
                      alignment: Alignment.centerRight,

                      child: TextButton(
                        onPressed: () {},

                        child: const Text(
                          "Mot de passe oublié ?",
                          style: TextStyle(
                            color: Color(0xFF1E3A5F),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    AdminLoginButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          "/adminDashboard",
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              /// SECURITE
              Container(
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: const Color(0xFF1E3A5F).withOpacity(0.08),
                  borderRadius: BorderRadius.circular(18),
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons.security,
                      color: Color(0xFF1E3A5F),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        "Accès réservé aux administrateurs autorisés.",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Text(
                "Loboko Admin Panel v1.0",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}