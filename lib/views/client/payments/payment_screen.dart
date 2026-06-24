import 'package:flutter/material.dart';

import 'widgets/payment_card.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Paiement"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const PaymentCard(
              title: "Service",
              value: "Plomberie",
              icon: Icons.plumbing,
            ),

            const SizedBox(height: 15),

            const PaymentCard(
              title: "Prestataire",
              value: "Jean Mavoungou",
              icon: Icons.person,
            ),

            const SizedBox(height: 15),

            const PaymentCard(
              title: "Montant",
              value: "15 000 FCFA",
              icon: Icons.payments,
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/paymentMethod",
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  const Color(0xFF26B6A6),
                ),

                child: const Text(
                  "Choisir le paiement",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}