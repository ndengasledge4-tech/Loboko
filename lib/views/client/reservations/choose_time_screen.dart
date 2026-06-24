import 'package:flutter/material.dart';

class ChooseTimeScreen extends StatefulWidget {
  const ChooseTimeScreen({super.key});

  @override
  State<ChooseTimeScreen> createState() =>
      _ChooseTimeScreenState();
}

class _ChooseTimeScreenState
    extends State<ChooseTimeScreen> {

  String selected = "";

  final List<String> hours = [
    "09h00",
    "10h00",
    "11h00",
    "15h00",
    "16h00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),

        centerTitle: true,

        title: const Text(
          "Choisir une heure",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 10),

            const Text(
              "Samedi 22 Juin 2024",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: ListView.separated(
                itemCount: hours.length,

                separatorBuilder: (_, __) =>
                const SizedBox(height: 12),

                itemBuilder: (context, index) {

                  final hour = hours[index];
                  final isSelected =
                      selected == hour;

                  return InkWell(
                    borderRadius:
                    BorderRadius.circular(12),

                    onTap: () {
                      setState(() {
                        selected = hour;
                      });
                    },

                    child: Container(
                      height: 55,

                      padding:
                      const EdgeInsets.symmetric(
                        horizontal: 18,
                      ),

                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color(
                          0xFFE8F7F3,
                        )
                            : Colors.white,

                        borderRadius:
                        BorderRadius.circular(
                          12,
                        ),

                        border: Border.all(
                          color: isSelected
                              ? const Color(
                            0xFF26B6A6,
                          )
                              : Colors.grey.shade300,
                        ),
                      ),

                      alignment:
                      Alignment.centerLeft,

                      child: Text(
                        hour,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                          FontWeight.w600,
                          color: isSelected
                              ? const Color(
                            0xFF26B6A6,
                          )
                              : Colors.black87,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: selected.isEmpty
                    ? null
                    : () {
                  Navigator.pushNamed(
                    context,
                    "/reservationDetails",
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  const Color(0xFF26B6A6),

                  elevation: 0,

                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(
                      12,
                    ),
                  ),
                ),

                child: const Text(
                  "Suivant",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}