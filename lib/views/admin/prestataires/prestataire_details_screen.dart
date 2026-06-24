import 'package:flutter/material.dart';

import 'widgets/document_viewer.dart';
import 'widgets/validation_button.dart';

class PrestataireDetailsScreen extends StatelessWidget {
  const PrestataireDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          "Détails Prestataire",
          style: TextStyle(
            color: Color(0xFF1E3A5F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.05),
                    blurRadius: 10,
                  ),
                ],
              ),

              child: Column(
                children: [

                  const CircleAvatar(
                    radius: 40,
                    backgroundColor:
                    Color(0xFF26B6A6),

                    child: Icon(
                      Icons.handyman,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Jean Makosso",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text("Plombier"),

                  const Divider(height: 30),

                  _info(
                    "Téléphone",
                    "+242 06 123 45 67",
                  ),

                  _info(
                    "Adresse",
                    "Pointe-Noire",
                  ),

                  _info(
                    "Expérience",
                    "5 ans",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Documents",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const DocumentViewer(
              title: "Pièce d'identité",
              imagePath:
              "assets/images/document.png",
            ),

            const DocumentViewer(
              title: "Certificat",
              imagePath:
              "assets/images/document.png",
            ),

            const SizedBox(height: 20),

            Row(
              children: [

                ValidationButton(
                  text: "Refuser",
                  color: Colors.red,

                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                const SizedBox(width: 12),

                ValidationButton(
                  text: "Valider",
                  color: Colors.green,

                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _info(
      String title,
      String value,
      ) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(vertical: 6),

      child: Row(
        children: [

          Expanded(
            flex: 2,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}