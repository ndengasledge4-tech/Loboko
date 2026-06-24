import 'package:flutter/material.dart';
import 'widgets/register_button.dart';

class RegisterPrestataireStep2 extends StatefulWidget {
  const RegisterPrestataireStep2({super.key});

  @override
  State<RegisterPrestataireStep2> createState() =>
      _RegisterPrestataireStep2State();
}

class _RegisterPrestataireStep2State
    extends State<RegisterPrestataireStep2> {

  final _formKey = GlobalKey<FormState>();

  final phoneController =
  TextEditingController();

  final passwordController =
  TextEditingController();

  final confirmPasswordController =
  TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

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
          "Étape 2/5",
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
                    value: 0.40,
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
                  "Sécurité du compte",
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
                  "Protégez votre compte avec un numéro valide et un mot de passe sécurisé.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 35),

                /// Téléphone
                TextFormField(
                  controller:
                  phoneController,

                  keyboardType:
                  TextInputType.phone,

                  validator: (value) {

                    if (value == null ||
                        value.isEmpty) {
                      return "Entrez votre numéro";
                    }

                    if (value.length < 9) {
                      return "Numéro invalide";
                    }

                    return null;
                  },

                  decoration:
                  InputDecoration(
                    hintText:
                    "06 123 45 67",

                    prefixIcon:
                    Container(
                      width: 90,
                      alignment:
                      Alignment.center,

                      child: const Text(
                        "+242",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.bold,
                          color:
                          Color(
                            0xFF26B6A6,
                          ),
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

                const SizedBox(height: 20),

                /// Mot de passe
                TextFormField(
                  controller:
                  passwordController,

                  obscureText:
                  obscurePassword,

                  validator: (value) {

                    if (value == null ||
                        value.isEmpty) {
                      return "Créez un mot de passe";
                    }

                    if (value.length < 8) {
                      return "8 caractères minimum";
                    }

                    return null;
                  },

                  decoration:
                  InputDecoration(
                    hintText:
                    "Mot de passe",

                    prefixIcon:
                    const Icon(
                      Icons.lock_outline,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    suffixIcon:
                    IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),

                      onPressed: () {
                        setState(() {
                          obscurePassword =
                          !obscurePassword;
                        });
                      },
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

                const SizedBox(height: 20),

                /// Confirmation
                TextFormField(
                  controller:
                  confirmPasswordController,

                  obscureText:
                  obscureConfirmPassword,

                  validator: (value) {

                    if (value == null ||
                        value.isEmpty) {
                      return "Confirmez votre mot de passe";
                    }

                    if (value !=
                        passwordController
                            .text) {
                      return "Les mots de passe ne correspondent pas";
                    }

                    return null;
                  },

                  decoration:
                  InputDecoration(
                    hintText:
                    "Confirmer le mot de passe",

                    prefixIcon:
                    const Icon(
                      Icons.lock_outline,
                      color: Color(
                        0xFF26B6A6,
                      ),
                    ),

                    suffixIcon:
                    IconButton(
                      icon: Icon(
                        obscureConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),

                      onPressed: () {
                        setState(() {
                          obscureConfirmPassword =
                          !obscureConfirmPassword;
                        });
                      },
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

                const SizedBox(height: 30),

                Container(
                  padding:
                  const EdgeInsets.all(
                    15,
                  ),

                  decoration:
                  BoxDecoration(
                    color:
                    const Color(
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
                        Icons.security,
                        color: Color(
                          0xFF26B6A6,
                        ),
                      ),

                      SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          "Votre numéro sera utilisé pour vérifier votre identité et sécuriser votre compte.",
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
                        "/registerPrestataireStep3",
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