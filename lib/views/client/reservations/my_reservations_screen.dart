import 'package:flutter/material.dart';

class MyReservationsScreen extends StatefulWidget {
  const MyReservationsScreen({super.key});

  @override
  State<MyReservationsScreen> createState() =>
      _MyReservationsScreenState();
}

class _MyReservationsScreenState
    extends State<MyReservationsScreen> {
  int selectedTab = 0;

  final tabs = [
    "À venir",
    "En cours",
    "Terminées",
    "Annulées",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff26B6A6),
        foregroundColor: Colors.white,
        title: const Text(
          "Mes réservations",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        children: [

          const SizedBox(height: 15),

          SizedBox(
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding:
              const EdgeInsets.symmetric(horizontal: 16),
              itemCount: tabs.length,
              itemBuilder: (_, index) {
                bool selected = selectedTab == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                    ),
                    decoration: BoxDecoration(
                      color: selected
                          ? const Color(0xff26B6A6)
                          : Colors.white,
                      borderRadius:
                      BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        color: selected
                            ? Colors.white
                            : Colors.black54,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 15),

          Expanded(
            child: ListView(
              padding:
              const EdgeInsets.symmetric(horizontal: 16),
              children: const [

                ReservationCard(
                  image: "assets/images/profil.png",
                  service: "Réparation TV",
                  provider: "TechExpress",
                  date: "22 Juin 2026 • 14h00",
                  status: "En attente",
                ),

                SizedBox(height: 15),

                ReservationCard(
                  image: "assets/images/profil.png",
                  service: "Installation Clim",
                  provider: "Clim Express",
                  date: "25 Juin 2026 • 10h00",
                  status: "Confirmée",
                ),

                SizedBox(height: 15),

                ReservationCard(
                  image: "assets/images/profil.png",
                  service: "Réparation Frigo",
                  provider: "Cool Services",
                  date: "26 Juin 2026 • 15h00",
                  status: "Terminée",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReservationCard extends StatelessWidget {
  final String image;
  final String service;
  final String provider;
  final String date;
  final String status;

  const ReservationCard({
    super.key,
    required this.image,
    required this.service,
    required this.provider,
    required this.date,
    required this.status,
  });

  Color get statusColor {
    switch (status) {
      case "Confirmée":
        return Colors.green;

      case "Terminée":
        return Colors.blue;

      case "Annulée":
        return Colors.red;

      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        Navigator.pushNamed(
          context,
          "/payment",
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.04),
              blurRadius: 8,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Row(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                width: 65,
                height: 65,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [

                  Text(
                    service,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    provider,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment:
              CrossAxisAlignment.end,
              children: [

                Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}