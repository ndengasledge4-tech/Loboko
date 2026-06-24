import 'package:flutter/material.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  static const Color primary = Color(0xFF1E9E8C);
  static const Color bg = Color(0xFFF8F5EF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,

      appBar: AppBar(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text("Profil Prestataire"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // Photo de couverture
            Stack(
              clipBehavior: Clip.none,
              children: [

                Image.asset(
                  "assets/images/tv.jpg",
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  bottom: -35,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 38,
                      backgroundImage:
                      AssetImage("assets/images/profil.png"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 45),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "TechExpress",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: const [

                      Icon(Icons.star,
                          color: Colors.orange, size: 18),

                      SizedBox(width: 4),

                      Text(
                        "4.8",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),

                      SizedBox(width: 6),

                      Text("(120 avis)"),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Row(
                    children: [

                      Icon(Icons.location_on,
                          size: 18,
                          color: Colors.grey),

                      SizedBox(width: 5),

                      Text(
                        "Yaoundé, Bastos",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Wrap(
                    spacing: 10,
                    children: [

                      badge(
                        Icons.verified,
                        "Professionnel vérifié",
                      ),

                      badge(
                        Icons.check_circle,
                        "En activité",
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [

                      const Text(
                        "Photos",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      TextButton(
                        onPressed: () {},
                        child: const Text("Voir tout"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        photo("assets/images/tv.jpg"),
                        photo("assets/images/tv.jpg"),
                        photo("assets/images/tv.jpg"),
                        photo("assets/images/tv.jpg"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "À propos",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Spécialiste en réparation de téléviseurs toutes marques.\nPlus de 5 ans d'expérience.",
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 35),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [

              const Expanded(
                child: Text(
                  "À partir de\n5 000 FCFA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              Expanded(
                child: SizedBox(
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/chooseDate",
                      );
                    },
                    child: const Text(
                      "Réserver",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget badge(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          Icon(
            icon,
            color: primary,
            size: 18,
          ),

          const SizedBox(width: 5),

          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  static Widget photo(String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          width: 120,
          height: 90,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}