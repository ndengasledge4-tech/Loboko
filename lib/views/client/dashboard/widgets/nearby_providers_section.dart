import 'package:flutter/material.dart';

class NearbyProvidersSection extends StatelessWidget {
  const NearbyProvidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,

      children: [
        const Text(
          "Prestataires près de chez vous",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 15),

        SizedBox(
          height: 320,
          child: ListView(
            scrollDirection: Axis.horizontal,

            children: [
              _providerCard(
                name: "Cool Services",
                distance: "1.2 km",
                rating: "4.8",
                image:
                "assets/images/providers/climaticien.png",
              ),

              const SizedBox(width: 15),

              _providerCard(
                name: "Jean Makosso",
                distance: "850 m",
                rating: "4.9",
                image:
                "assets/images/providers/climaticien.png",
              ),

              const SizedBox(width: 15),

              _providerCard(
                name: "Tech Express",
                distance: "2.1 km",
                rating: "4.7",
                image:
                "assets/images/providers/climaticien.png",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _providerCard({
    required String name,
    required String distance,
    required String rating,
    required String image,
  }) {
    return Container(
      width: 240,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(24),

        boxShadow: [
          BoxShadow(
            color:
            Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(
              top: Radius.circular(24),
            ),

            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.all(12),

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 18,
                        color:
                        Color(0xFF26B6A6),
                      ),

                      const SizedBox(width: 4),

                      Text(distance),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),

                      const SizedBox(width: 4),

                      Text(
                        rating,
                        style: const TextStyle(
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    height: 40,

                    child: ElevatedButton(
                      onPressed: () {},

                      style:
                      ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color(
                            0xFF26B6A6),

                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius
                              .circular(
                              12),
                        ),
                      ),

                      child: const Text(
                        "Voir profil",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}