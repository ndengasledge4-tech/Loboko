import 'package:flutter/material.dart';
import 'widgets/register_button.dart';

class RegisterClientStep1 extends StatefulWidget {
  const RegisterClientStep1({super.key});

  @override
  State<RegisterClientStep1> createState() =>
      _RegisterClientStep1State();
}

class _RegisterClientStep1State
    extends State<RegisterClientStep1> {

  final nomController =
  TextEditingController();

  final prenomController =
  TextEditingController();

  final contactController =
  TextEditingController();

  final emailSecoursController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: const Text(
          "Étape 1/3",
          style: TextStyle(
            color: Color(0xFF26B6A6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding:
          const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              /// Progression
              Column(
                children: [

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                    children: const [
                      Text(
                        "Progression",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.w600,
                        ),
                      ),

                      Text(
                        "33%",
                        style: TextStyle(
                          color:
                          Color(0xFF26B6A6),
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  ClipRRect(
                    borderRadius:
                    BorderRadius.circular(
                        30),

                    child:
                    const LinearProgressIndicator(
                      value: 0.33,
                      minHeight: 8,
                      color:
                      Color(0xFF26B6A6),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              /// Header
              Container(
                width: double.infinity,
                padding:
                const EdgeInsets.all(
                    24),

                decoration:
                BoxDecoration(
                  color: const Color(
                      0xFF26B6A6),

                  borderRadius:
                  BorderRadius.circular(
                      25),
                ),

                child: Column(
                  children: [

                    Container(
                      width: 90,
                      height: 90,

                      decoration:
                      BoxDecoration(
                        color: Colors.white
                            .withOpacity(
                            .15),

                        shape:
                        BoxShape.circle,
                      ),

                      child: const Icon(
                        Icons.person_add_alt_1,
                        size: 45,
                        color:
                        Colors.white,
                      ),
                    ),

                    const SizedBox(
                        height: 15),

                    const Text(
                      "Créons votre compte",
                      textAlign:
                      TextAlign.center,

                      style: TextStyle(
                        color:
                        Colors.white,
                        fontSize: 24,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                        height: 8),

                    const Text(
                      "Quelques informations suffisent pour commencer.",
                      textAlign:
                      TextAlign.center,

                      style: TextStyle(
                        color:
                        Colors.white70,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Identité & Contact",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                  FontWeight.bold,
                  color:
                  Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "Renseignez vos informations personnelles.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 25),

              _buildField(
                controller:
                nomController,
                hint: "Nom",
                icon:
                Icons.person_outline,
              ),

              const SizedBox(height: 15),

              _buildField(
                controller:
                prenomController,
                hint: "Prénom",
                icon:
                Icons.person_outline,
              ),

              const SizedBox(height: 15),

              _buildField(
                controller:
                contactController,
                hint:
                "Téléphone ou Email",
                icon:
                Icons.phone_outlined,
              ),

              const SizedBox(height: 15),

              _buildField(
                controller:
                emailSecoursController,
                hint:
                "Email de secours",
                icon:
                Icons.email_outlined,
              ),

              const SizedBox(height: 35),

              RegisterButton(
                text: "Continuer",

                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/registerClientStep2",
                  );
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController
    controller,
    required String hint,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(18),

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

      child: TextFormField(
        controller: controller,

        decoration: InputDecoration(
          hintText: hint,

          prefixIcon: Icon(
            icon,
            color:
            const Color(0xFF26B6A6),
          ),

          border: InputBorder.none,

          contentPadding:
          const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
        ),
      ),
    );
  }
}