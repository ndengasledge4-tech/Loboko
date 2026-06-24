import 'package:flutter/material.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  static const Color primary = Color(0xFF26B6A6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
        foregroundColor: Colors.white,
        title: const Text("Mission en cours"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // Prestataire
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [

                  const CircleAvatar(
                    radius: 28,
                    backgroundImage:
                    AssetImage("assets/images/profil.png"),
                  ),

                  const SizedBox(width: 15),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Prestataire",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "Jean Tech",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: const [
                      Text(
                        "4.8",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.star,
                          color: Colors.orange,
                          size: 18),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Statut de la mission",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            const TimelineTile(
              title: "Demande acceptée",
              subtitle: "22 Juin 2026 • 10:00",
              active: true,
            ),

            const TimelineTile(
              title: "Prestataire en route",
              subtitle: "22 Juin 2026 • 13:30",
              active: true,
            ),

            const TimelineTile(
              title: "Prestataire arrivé",
              subtitle: "",
              active: false,
            ),

            const TimelineTile(
              title: "Mission terminée",
              subtitle: "",
              active: false,
              isLast: true,
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/map.jpg",
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                children: [

                  Icon(
                    Icons.directions_car,
                    color: Colors.green,
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Text(
                      "Le prestataire est en route\nDistance : 2,5 km • 10 min",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/validation",
                  );
                },
                child: const Text(
                  "Prestataire arrivé",
                  style: TextStyle(
                    color: Colors.white,
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
}

class TimelineTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool active;
  final bool isLast;

  const TimelineTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.active,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [

          Column(
            children: [

              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: active
                      ? const Color(0xff26B6A6)
                      : Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: active
                    ? const Icon(
                  Icons.check,
                  size: 12,
                  color: Colors.white,
                )
                    : null,
              ),

              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: Colors.grey.shade300,
                  ),
                ),
            ],
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: active
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),

                  if (subtitle.isNotEmpty)
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
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