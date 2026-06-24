import 'package:flutter/material.dart';
import 'widgets/register_button.dart';

class RegisterPrestataireStep5 extends StatefulWidget {
  const RegisterPrestataireStep5({super.key});

  @override
  State<RegisterPrestataireStep5> createState() =>
      _RegisterPrestataireStep5State();
}

class _RegisterPrestataireStep5State
    extends State<RegisterPrestataireStep5> {

  bool certified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF26B6A6),
          ),
          onPressed: () => Navigator.pop(context),
        ),

        title: const Text(
          "Étape 5/5",
          style: TextStyle(
            color: Color(0xFF26B6A6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              /// Progression
              ClipRRect(
                borderRadius:
                BorderRadius.circular(10),

                child: LinearProgressIndicator(
                  value: 1,
                  minHeight: 8,

                  backgroundColor:
                  Colors.grey.shade300,

                  color:
                  const Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Documents & Validation",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight:
                  FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Finalisez votre inscription en ajoutant vos documents.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              /// Photo profil
              _uploadCard(
                icon: Icons.person,
                title: "Photo de profil",
                subtitle:
                "Ajoutez une photo professionnelle",
              ),

              const SizedBox(height: 20),

              /// Pièce identité
              _uploadCard(
                icon: Icons.badge_outlined,
                title: "Pièce d'identité",
                subtitle:
                "Carte nationale ou passeport",
              ),

              const SizedBox(height: 20),

              /// Réalisations
              _uploadCard(
                icon: Icons.photo_library_outlined,
                title: "Photos de réalisations",
                subtitle:
                "Montrez vos meilleurs travaux",
              ),

              const SizedBox(height: 30),

              const Text(
                "Récapitulatif",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                  FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 15),

              _infoTile(
                Icons.person_outline,
                "Nom",
                "Jean Mavoungou",
              ),

              _infoTile(
                Icons.work_outline,
                "Métier",
                "Plombier",
              ),

              _infoTile(
                Icons.star_outline,
                "Expérience",
                "5 ans",
              ),

              _infoTile(
                Icons.location_on_outlined,
                "Ville",
                "Brazzaville",
              ),

              const SizedBox(height: 25),

              Container(
                padding:
                const EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                  BorderRadius.circular(
                    18,
                  ),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(
                        0.05,
                      ),
                      blurRadius: 10,
                    ),
                  ],
                ),

                child: CheckboxListTile(
                  value: certified,

                  activeColor:
                  const Color(0xFF26B6A6),

                  contentPadding:
                  EdgeInsets.zero,

                  title: const Text(
                    "Je certifie que toutes les informations fournies sont exactes.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),

                  onChanged: (value) {
                    setState(() {
                      certified =
                          value ?? false;
                    });
                  },
                ),
              ),

              const SizedBox(height: 35),

              RegisterButton(
                text: "Créer mon compte",

                onPressed: certified
                    ? () {
                  Navigator.pushNamed(
                    context,
                    "/dashboardPrestataire",
                  );
                }
                    : () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Veuillez certifier les informations.",
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _uploadCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color:
            Colors.black.withOpacity(
              0.05,
            ),
            blurRadius: 10,
          ),
        ],
      ),

      child: Row(
        children: [

          Container(
            width: 60,
            height: 60,

            decoration: BoxDecoration(
              color: const Color(
                0xFF26B6A6,
              ).withOpacity(.1),

              borderRadius:
              BorderRadius.circular(
                15,
              ),
            ),

            child: Icon(
              icon,
              color:
              const Color(0xFF26B6A6),
              size: 30,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight:
                    FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  subtitle,
                  style: TextStyle(
                    color:
                    Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {},

            style: ElevatedButton.styleFrom(
              backgroundColor:
              const Color(
                0xFF26B6A6,
              ),

              shape:
              RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(
                  12,
                ),
              ),
            ),

            child: const Text(
              "Ajouter",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoTile(
      IconData icon,
      String title,
      String value,
      ) {
    return Container(
      margin:
      const EdgeInsets.only(bottom: 12),

      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(16),
      ),

      child: Row(
        children: [

          Icon(
            icon,
            color:
            const Color(0xFF26B6A6),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),

          Text(
            value,
            style: const TextStyle(
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}