import 'package:flutter/material.dart';
import 'widgets/register_button.dart';

class RegisterPrestataireStep3 extends StatefulWidget {
  const RegisterPrestataireStep3({super.key});

  @override
  State<RegisterPrestataireStep3> createState() =>
      _RegisterPrestataireStep3State();
}

class _RegisterPrestataireStep3State
    extends State<RegisterPrestataireStep3> {

  final _formKey = GlobalKey<FormState>();

  String? selectedService;

  final experienceController =
  TextEditingController();

  final descriptionController =
  TextEditingController();

  final List<String> services = [
    "Plombier",
    "Électricien",
    "Maçon",
    "Peintre",
    "Menuisier",
    "Mécanicien",
    "Climatisation",
    "Jardinage",
    "Agent d'entretien",
    "Informaticien",
    "Coiffeur",
    "Réparateur TV",
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
          onPressed: () =>
              Navigator.pop(context),
        ),

        title: const Text(
          "Étape 3/5",
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
                  BorderRadius.circular(10),

                  child:
                  LinearProgressIndicator(
                    value: 0.60,
                    minHeight: 8,
                    backgroundColor:
                    Colors.grey.shade300,
                    color:
                    const Color(0xFF26B6A6),
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Profil professionnel",
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
                  "Présentez votre activité afin que les clients puissent mieux vous trouver.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 35),

                /// Métier
                DropdownButtonFormField<String>(
                  value: selectedService,

                  validator: (value) {
                    if (value == null) {
                      return "Choisissez un métier";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText:
                    "Sélectionnez votre métier",

                    prefixIcon: const Icon(
                      Icons.handyman_outlined,
                      color: Color(0xFF26B6A6),
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

                  items: services.map(
                        (service) =>
                        DropdownMenuItem(
                          value: service,
                          child: Text(service),
                        ),
                  ).toList(),

                  onChanged: (value) {
                    setState(() {
                      selectedService = value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                /// Expérience
                TextFormField(
                  controller:
                  experienceController,

                  keyboardType:
                  TextInputType.number,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Indiquez votre expérience";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText:
                    "Années d'expérience",

                    prefixIcon: const Icon(
                      Icons.workspace_premium_outlined,
                      color: Color(0xFF26B6A6),
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

                /// Description
                TextFormField(
                  controller:
                  descriptionController,

                  maxLines: 5,

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Décrivez vos services";
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText:
                    "Décrivez vos compétences, vos services et vos spécialités...",

                    alignLabelWithHint: true,

                    prefixIcon:
                    const Padding(
                      padding:
                      EdgeInsets.only(
                        bottom: 90,
                      ),

                      child: Icon(
                        Icons.description_outlined,
                        color:
                        Color(0xFF26B6A6),
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

                Container(
                  padding:
                  const EdgeInsets.all(15),

                  decoration: BoxDecoration(
                    color:
                    const Color(
                      0xFF26B6A6,
                    ).withOpacity(.08),

                    borderRadius:
                    BorderRadius.circular(
                      15,
                    ),
                  ),

                  child: const Row(
                    children: [

                      Icon(
                        Icons.lightbulb_outline,
                        color:
                        Color(0xFF26B6A6),
                      ),

                      SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          "Une description claire augmente vos chances d'être contacté par les clients.",
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
                        "/registerPrestataireStep4",
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