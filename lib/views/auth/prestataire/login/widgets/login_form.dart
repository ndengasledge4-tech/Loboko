import 'package:flutter/material.dart';
import 'email_field.dart';
import 'password_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const EmailField(),

        const SizedBox(height: 15),

        const PasswordField(),

        const SizedBox(height: 8),

        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/forgotPrestataire",
              );
            },
            child: const Text(
              "Mot de passe oublié ?",
              style: TextStyle(
                color: Color(0xFF26B6A6),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        SizedBox(
          width: double.infinity,
          height: 55,

          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                "/dashboardPrestataire",
              );
            },

            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor:
              const Color(0xFF26B6A6),

              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(18),
              ),
            ),

            child: const Text(
              "Se connecter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}