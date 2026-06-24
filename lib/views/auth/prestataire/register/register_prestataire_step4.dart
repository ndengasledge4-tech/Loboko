import 'package:flutter/material.dart';
import 'widgets/register_button.dart';

class RegisterPrestataireStep4 extends StatefulWidget {
  const RegisterPrestataireStep4({super.key});

  @override
  State<RegisterPrestataireStep4> createState() =>
      _RegisterPrestataireStep4State();
}

class _RegisterPrestataireStep4State
    extends State<RegisterPrestataireStep4> {

  final _formKey = GlobalKey<FormState>();

  final villeController =
  TextEditingController();

  final quartierController =
  TextEditingController();

  final zoneController =
  TextEditingController();

  bool localisationActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFF8F5EF,
      ),

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
          "Étape 4/5",
          style: TextStyle(
            color: Color(0xFF26B6A6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Form(
            key: _formKey,

            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                /// Progression
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(10),

                  child:
                  LinearProgressIndicator(
                    value: 0.80,
                    minHeight: 8,

                    backgroundColor:
                    Colors.grey.shade300,

                    color: const Color(
                      0xFF26B6A6,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Zone d'intervention",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight:
                    FontWeight.bold,
                    color: Color(
                      0xFF1E3A5F,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Indiquez les zones dans lesquelles vous pouvez intervenir.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 35),

                /// Ville
                TextFormField(
                  controller:
                  villeController,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Entrez votre ville";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText:
                    "Ville (Brazzaville, Pointe-Noire...)",

                    prefixIcon: const Icon(
                      Icons.location_city,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    filled: true,
                    fillColor: Colors.white,

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

                const SizedBox(height: 20),

                /// Quartier
                TextFormField(
                  controller:
                  quartierController,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Entrez votre quartier";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText:
                    "Quartier",

                    prefixIcon: const Icon(
                      Icons.place_outlined,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    filled: true,
                    fillColor: Colors.white,

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

                const SizedBox(height: 20),

                /// Zone
                TextFormField(
                  controller:
                  zoneController,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Précisez votre zone";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText:
                    "Zone d'intervention",

                    prefixIcon: const Icon(
                      Icons.map_outlined,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    filled: true,
                    fillColor: Colors.white,

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

                const SizedBox(height: 25),

                /// Carte GPS
                Container(
                  width: double.infinity,
                  height: 220,

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius:
                    BorderRadius.circular(
                      22,
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(
                          0.05,
                        ),
                        blurRadius: 10,
                      ),
                    ],
                  ),

                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,

                    children: [

                      Container(
                        width: 80,
                        height: 80,

                        decoration:
                        BoxDecoration(
                          color: const Color(
                            0xFF26B6A6,
                          ).withOpacity(
                            .1,
                          ),

                          shape:
                          BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.location_on,
                          size: 45,
                          color: Color(
                            0xFF26B6A6,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      const Text(
                        "Localisation GPS",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(
                        height: 8,
                      ),

                      const Text(
                        "Permet aux clients de vous trouver plus facilement.",
                        textAlign:
                        TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      SwitchListTile(
                        value:
                        localisationActive,

                        activeColor:
                        const Color(
                          0xFF26B6A6,
                        ),

                        title: const Text(
                          "Activer la localisation GPS",
                        ),

                        onChanged:
                            (value) {
                          setState(() {
                            localisationActive =
                                value;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                Container(
                  padding:
                  const EdgeInsets.all(
                    15,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(
                      0xFF26B6A6,
                    ).withOpacity(
                      .08,
                    ),

                    borderRadius:
                    BorderRadius.circular(
                      15,
                    ),
                  ),

                  child: const Row(
                    children: [

                      Icon(
                        Icons.info_outline,
                        color: Color(
                          0xFF26B6A6,
                        ),
                      ),

                      SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          "Votre position GPS reste privée et sert uniquement à améliorer la visibilité de votre profil.",
                          style: TextStyle(
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
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
                        "/registerPrestataireStep5",
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