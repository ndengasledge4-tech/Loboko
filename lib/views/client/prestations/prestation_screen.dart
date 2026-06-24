import 'package:flutter/material.dart';
import 'package:loboko/views/client/widgets/client_bottom_navbar.dart';

import 'widgets/prestation_card.dart';

class PrestationScreen extends StatelessWidget {
  const PrestationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      appBar: AppBar(
        title: const Text("Mes prestations"),
        backgroundColor: const Color(0xFF26B6A6),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      bottomNavigationBar: const ClientBottomNavBar(
        currentIndex: 3,
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF26B6A6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                10,
                20,
                25,
              ),

              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceAround,

                children: const [
                  _StatItem(
                    value: "12",
                    label: "Total",
                  ),

                  _StatItem(
                    value: "3",
                    label: "En cours",
                  ),

                  _StatItem(
                    value: "9",
                    label: "Terminées",
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 20,
            ),

            child: InkWell(
              borderRadius:
              BorderRadius.circular(20),

              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/myReservations",
                );
              },

              child: Container(
                padding:
                const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                  BorderRadius.circular(
                    20,
                  ),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.05),
                      blurRadius: 10,
                      offset:
                      const Offset(0, 4),
                    ),
                  ],
                ),

                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor:
                      Color(0xFFE8F8F6),

                      child: Icon(
                        Icons.calendar_month,
                        color:
                        Color(0xFF26B6A6),
                      ),
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                        children: [
                          Text(
                            "Mes réservations",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight:
                              FontWeight
                                  .bold,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            "Consulter l'historique complet",
                            style: TextStyle(
                              color:
                              Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          const Padding(
            padding:
            EdgeInsets.symmetric(
              horizontal: 20,
            ),

            child: Align(
              alignment:
              Alignment.centerLeft,

              child: Text(
                "Prestations récentes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Expanded(
            child: ListView(
              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              children: const [
                PrestationCard(
                  service: "Plomberie",
                  prestataire:
                  "Jean Mavoungou",
                  date: "10 Juin 2026",
                  status: "Terminée",
                ),

                SizedBox(height: 15),

                PrestationCard(
                  service: "Électricité",
                  prestataire:
                  "Kevin Mpassi",
                  date: "14 Juin 2026",
                  status: "En cours",
                ),

                SizedBox(height: 15),

                PrestationCard(
                  service:
                  "Climatisation",
                  prestataire:
                  "Junior Okemba",
                  date: "18 Juin 2026",
                  status: "Planifiée",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight:
            FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5),

        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}