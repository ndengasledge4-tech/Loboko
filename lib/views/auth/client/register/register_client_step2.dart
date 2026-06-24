import 'package:flutter/material.dart';
import 'widgets/register_button.dart';

class RegisterClientStep2 extends StatefulWidget {
  const RegisterClientStep2({super.key});

  @override
  State<RegisterClientStep2> createState() =>
      _RegisterClientStep2State();
}

class _RegisterClientStep2State
    extends State<RegisterClientStep2> {

  final passwordController =
  TextEditingController();

  final confirmPasswordController =
  TextEditingController();

  final quartierController =
  TextEditingController();

  final adresseController =
  TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirm = true;

  String? selectedVille;

  final List<String> villes = [
    "Brazzaville",
    "Pointe-Noire",
    "Dolisie",
    "Nkayi",
    "Owando",
    "Ouesso",
    "Madingou",
    "Impfondo",
    "Mossendjo",
    "Kinkala",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      const Color(0xFFF8F5EF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF26B6A6),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Étape 2/3",
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
                    "66%",
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
                  value: .66,
                  minHeight: 8,
                  color:
                  Color(0xFF26B6A6),
                ),
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
                            .withOpacity(.15),
                        shape:
                        BoxShape.circle,
                      ),

                      child: const Icon(
                        Icons.security,
                        color:
                        Colors.white,
                        size: 45,
                      ),
                    ),

                    const SizedBox(
                        height: 15),

                    const Text(
                      "Sécurité & Localisation",
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
                      "Protégez votre compte et indiquez votre lieu de résidence.",
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

              /// Mot de passe
              _passwordField(
                controller:
                passwordController,
                hint: "Mot de passe",
                obscure:
                obscurePassword,
                onToggle: () {
                  setState(() {
                    obscurePassword =
                    !obscurePassword;
                  });
                },
              ),

              const SizedBox(height: 15),

              /// Confirmation
              _passwordField(
                controller:
                confirmPasswordController,
                hint:
                "Confirmer le mot de passe",
                obscure:
                obscureConfirm,
                onToggle: () {
                  setState(() {
                    obscureConfirm =
                    !obscureConfirm;
                  });
                },
              ),

              const SizedBox(height: 25),

              /// Carte localisation
              Container(
                padding:
                const EdgeInsets.all(
                    18),

                decoration:
                BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                  BorderRadius.circular(
                      20),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(
                          .05),
                      blurRadius: 10,
                    ),
                  ],
                ),

                child: Row(
                  children: [

                    Container(
                      width: 60,
                      height: 60,

                      decoration:
                      BoxDecoration(
                        color: const Color(
                          0xFF26B6A6,
                        ).withOpacity(.1),

                        shape:
                        BoxShape.circle,
                      ),

                      child: const Icon(
                        Icons.location_on,
                        color:
                        Color(
                          0xFF26B6A6,
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 15),

                    const Expanded(
                      child: Text(
                        "Votre localisation permettra de trouver rapidement les meilleurs prestataires proches de vous.",
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              /// Ville
              _dropdownVille(),

              const SizedBox(height: 15),

              /// Quartier
              _field(
                controller:
                quartierController,
                hint: "Quartier",
                icon:
                Icons.location_city,
              ),

              const SizedBox(height: 15),

              /// Adresse
              _field(
                controller:
                adresseController,
                hint:
                "Adresse complète",
                icon:
                Icons.home_outlined,
                maxLines: 3,
              ),

              const SizedBox(height: 35),

              RegisterButton(
                text: "Continuer",

                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/registerClientStep3",
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

  Widget _field({
    required TextEditingController
    controller,
    required String hint,
    required IconData icon,
    int maxLines = 1,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(.05),
            blurRadius: 10,
          ),
        ],
      ),

      child: TextFormField(
        controller: controller,
        maxLines: maxLines,

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

  Widget _passwordField({
    required TextEditingController
    controller,
    required String hint,
    required bool obscure,
    required VoidCallback onToggle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(.05),
            blurRadius: 10,
          ),
        ],
      ),

      child: TextFormField(
        controller: controller,
        obscureText: obscure,

        decoration: InputDecoration(
          hintText: hint,

          prefixIcon: const Icon(
            Icons.lock_outline,
            color: Color(0xFF26B6A6),
          ),

          suffixIcon: IconButton(
            onPressed: onToggle,

            icon: Icon(
              obscure
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
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

  Widget _dropdownVille() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(.05),
            blurRadius: 10,
          ),
        ],
      ),

      child: DropdownButtonFormField<
          String>(
        value: selectedVille,

        decoration:
        const InputDecoration(
          hintText:
          "Sélectionner une ville",

          prefixIcon: Icon(
            Icons.location_city,
            color:
            Color(0xFF26B6A6),
          ),

          border: InputBorder.none,
        ),

        items:
        villes.map((ville) {
          return DropdownMenuItem(
            value: ville,
            child: Text(ville),
          );
        }).toList(),

        onChanged: (value) {
          setState(() {
            selectedVille = value;
          });
        },
      ),
    );
  }
}