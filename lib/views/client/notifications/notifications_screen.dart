import 'package:flutter/material.dart';

import 'package:loboko/views/client/widgets/client_bottom_navbar.dart';
import 'widgets/notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Notifications"),
        centerTitle: true,
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      bottomNavigationBar: const ClientBottomNavBar(
        currentIndex: 3,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [

          NotificationCard(
            icon: Icons.check_circle,
            color: Colors.green,
            title: "Réservation confirmée",
            subtitle:
            "Votre réservation a été acceptée.",
            time: "Il y a 2 min",
            isNew: true,
          ),

          SizedBox(height: 12),

          NotificationCard(
            icon: Icons.payment,
            color: Colors.blue,
            title: "Paiement reçu",
            subtitle:
            "Votre paiement de 15 000 FCFA a été validé.",
            time: "Il y a 15 min",
            isNew: true,
          ),

          SizedBox(height: 12),

          NotificationCard(
            icon: Icons.location_on,
            color: Colors.orange,
            title: "Prestataire en route",
            subtitle:
            "Jean Plombier arrive chez vous.",
            time: "Aujourd'hui",
          ),

          SizedBox(height: 12),

          NotificationCard(
            icon: Icons.message,
            color: Colors.purple,
            title: "Nouveau message",
            subtitle:
            "Vous avez reçu un message.",
            time: "Aujourd'hui",
          ),

          SizedBox(height: 12),

          NotificationCard(
            icon: Icons.star,
            color: Colors.amber,
            title: "Laissez un avis",
            subtitle:
            "Évaluez votre dernière prestation.",
            time: "Hier",
          ),
        ],
      ),
    );
  }
}