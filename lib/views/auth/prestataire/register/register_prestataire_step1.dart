import 'package:flutter/material.dart';
import 'widgets/register_button.dart';

class RegisterPrestataireStep1 extends StatefulWidget {
  const RegisterPrestataireStep1({super.key});

  @override
  State<RegisterPrestataireStep1> createState() =>
      _RegisterPrestataireStep1State();
}

class _RegisterPrestataireStep1State
    extends State<RegisterPrestataireStep1> {

  final _formKey = GlobalKey<FormState>();

  final nomController =
  TextEditingController();

  final prenomController =
  TextEditingController();

  final adresseController =
  TextEditingController();

  final emailController =
  TextEditingController();

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
          onPressed: () =>
              Navigator.pop(context),
        ),

        title: const Text(
          "Étape 1/5",
          style: TextStyle(
            color: Color(0xFF26B6A6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding:
          const EdgeInsets.all(24),

          child: Form(
            key: _formKey,

            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                /// Progression
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(
                    10,
                  ),

                  child:
                  LinearProgressIndicator(
                    value: 0.20,
                    minHeight: 8,
                    backgroundColor:
                    Colors.grey.shade300,
                    color:
                    const Color(
                      0xFF26B6A6,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Identité & Coordonnées",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight:
                    FontWeight.bold,
                    color:
                    Color(0xFF1E3A5F),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Renseignez vos informations personnelles.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 35),

                /// Nom
                TextFormField(
                  controller:
                  nomController,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Entrez votre nom";
                    }
                    return null;
                  },

                  decoration:
                  InputDecoration(
                    hintText:
                    "Nom de famille",

                    prefixIcon:
                    const Icon(
                      Icons.person_outline,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    filled: true,
                    fillColor:
                    Colors.white,

                    border:
                    OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(
                        18,
                      ),
                      borderSide:
                      BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                /// Prénom
                TextFormField(
                  controller:
                  prenomController,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Entrez votre prénom";
                    }
                    return null;
                  },

                  decoration:
                  InputDecoration(
                    hintText: "Prénom",

                    prefixIcon:
                    const Icon(
                      Icons.badge_outlined,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    filled: true,
                    fillColor:
                    Colors.white,

                    border:
                    OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(
                        18,
                      ),
                      borderSide:
                      BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                /// Adresse
                TextFormField(
                  controller:
                  adresseController,

                  maxLines: 2,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Entrez votre adresse";
                    }
                    return null;
                  },

                  decoration:
                  InputDecoration(
                    hintText:
                    "Adresse résidentielle",

                    prefixIcon:
                    const Padding(
                      padding:
                      EdgeInsets.only(
                        bottom: 25,
                      ),

                      child: Icon(
                        Icons.location_on_outlined,
                        color: Color(
                          0xFF26B6A6,
                        ),
                      ),
                    ),

                    filled: true,
                    fillColor:
                    Colors.white,

                    border:
                    OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(
                        18,
                      ),
                      borderSide:
                      BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                /// Email
                TextFormField(
                  controller:
                  emailController,

                  keyboardType:
                  TextInputType
                      .emailAddress,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Entrez votre email";
                    }

                    if (!value.contains(
                      "@",
                    )) {
                      return "Email invalide";
                    }

                    return null;
                  },

                  decoration:
                  InputDecoration(
                    hintText:
                    "Adresse email",

                    prefixIcon:
                    const Icon(
                      Icons.email_outlined,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    filled: true,
                    fillColor:
                    Colors.white,

                    border:
                    OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(
                        18,
                      ),
                      borderSide:
                      BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                RegisterButton(
                  text: "Continuer",

                  onPressed: () {
                    if (_formKey
                        .currentState!
                        .validate()) {

                      Navigator.pushNamed(
                        context,
                        "/registerPrestataireStep2",
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}