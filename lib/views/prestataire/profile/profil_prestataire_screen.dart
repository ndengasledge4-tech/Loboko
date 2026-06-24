import 'package:flutter/material.dart';
import 'package:loboko/views/prestataire/widgets/prestataire_bottom_navbar.dart';

class ProfilPrestataireScreen extends StatelessWidget {
  const ProfilPrestataireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Mon profil"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
      ),

      bottomNavigationBar: const PrestataireBottomNavBar(
        currentIndex: 4,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                children: [

                  const CircleAvatar(
                    radius: 45,
                    child: Icon(
                      Icons.person,
                      size: 45,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Jean Mavoungou",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Plombier Professionnel",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 25),

                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text("Modifier profil"),
                    trailing: const Icon(Icons.arrow_forward_ios,size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/editProfilPrestataire",
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.schedule),
                    title: const Text("Disponibilité"),
                    trailing: const Icon(Icons.arrow_forward_ios,size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/disponibilite",
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.build),
                    title: const Text("Services"),
                    trailing: const Icon(Icons.arrow_forward_ios,size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/servicesPrestataire",
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.attach_money),
                    title: const Text("Tarifs"),
                    trailing: const Icon(Icons.arrow_forward_ios,size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/tarifs",
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text("Mes photos"),
                    trailing: const Icon(Icons.arrow_forward_ios,size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/photos",
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.star),
                    title: const Text("Avis clients"),
                    trailing: const Icon(Icons.arrow_forward_ios,size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/avisClients",
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Paramètres"),
                    trailing: const Icon(Icons.arrow_forward_ios,size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/parametres",
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                icon: const Icon(Icons.logout),

                label: const Text(
                  "Déconnexion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),

                onPressed: () async {

                  final confirm =
                  await showDialog<bool>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                          "Déconnexion",
                        ),
                        content: const Text(
                          "Voulez-vous vraiment vous déconnecter ?",
                        ),
                        actions: [

                          TextButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                                false,
                              );
                            },
                            child: const Text(
                              "Annuler",
                            ),
                          ),

                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                                true,
                              );
                            },
                            child: const Text(
                              "Oui",
                            ),
                          ),
                        ],
                      );
                    },
                  );

                  if (confirm == true) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/loginPrestataire",
                          (route) => false,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}