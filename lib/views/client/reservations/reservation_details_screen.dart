import 'package:flutter/material.dart';

class ReservationDetailsScreen extends StatefulWidget {
  const ReservationDetailsScreen({super.key});

  @override
  State<ReservationDetailsScreen> createState() =>
      _ReservationDetailsScreenState();
}

class _ReservationDetailsScreenState
    extends State<ReservationDetailsScreen> {

  final TextEditingController descriptionController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            const Text(
              "Décrivez votre problème",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),

              child: TextField(
                controller: descriptionController,
                maxLines: 6,

                decoration: InputDecoration(
                  hintText:
                  "Expliquez votre problème en détail...\n\n(Ex : Ma télévision ne s'allume plus, l'écran est noir)",
                  border: InputBorder.none,
                  contentPadding:
                  const EdgeInsets.all(16),
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Ajouter des photos (optionnel)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [

                _photoButton(Icons.camera_alt),

                const SizedBox(width: 12),

                _photoButton(Icons.photo_camera),

                const SizedBox(width: 12),

                _photoButton(Icons.add),
              ],
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 56,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/reservationSuccess",
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  const Color(0xFF26B6A6),

                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(16),
                  ),
                ),

                child: const Text(
                  "Confirmer la réservation",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                    FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _photoButton(IconData icon) {
    return Container(
      width: 55,
      height: 55,

      decoration: BoxDecoration(
        color: const Color(0xFFF5F7F9),
        borderRadius:
        BorderRadius.circular(14),
      ),

      child: Icon(
        icon,
        color: const Color(0xFF26B6A6),
      ),
    );
  }
}