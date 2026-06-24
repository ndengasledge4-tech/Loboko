import 'package:flutter/material.dart';

class ReservationSuccessScreen extends StatelessWidget {
  const ReservationSuccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),

          child: Column(
            children: [

              const Spacer(),

              Container(
                width: 130,
                height: 130,

                decoration: BoxDecoration(
                  color: const Color(
                    0xFFE8F7F3,
                  ),
                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.check,
                  color: Color(0xFF26B6A6),
                  size: 70,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Réservation confirmée !",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Votre demande a été envoyée au prestataire.",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/myReservations",
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xFF26B6A6),

                    elevation: 0,

                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                        12,
                      ),
                    ),
                  ),

                  child: const Text(
                    "Voir mes réservations",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    "/home",
                        (route) => false,
                  );
                },

                child: const Text(
                  "Retour à l'accueil",
                  style: TextStyle(
                    color: Color(0xFF26B6A6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}