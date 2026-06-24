import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'widgets/register_button.dart';

class RegisterClientStep3 extends StatefulWidget {
  const RegisterClientStep3({super.key});

  @override
  State<RegisterClientStep3> createState() =>
      _RegisterClientStep3State();
}

class _RegisterClientStep3State
    extends State<RegisterClientStep3> {

  bool acceptedTerms = false;

  File? identityImage;

  Future<void> pickImage() async {

    final picker = ImagePicker();

    final file =
    await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (file != null) {
      setState(() {
        identityImage =
            File(file.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      const Color(0xFFF8F5EF),

      appBar: AppBar(
        backgroundColor:
        Colors.white,
        elevation: 0,

        leading: IconButton(
          onPressed: () =>
              Navigator.pop(context),

          icon: const Icon(
            Icons.arrow_back_ios_new,
            color:
            Color(0xFF26B6A6),
          ),
        ),

        title: const Text(
          "Étape 3/3",
          style: TextStyle(
            color:
            Color(0xFF26B6A6),
            fontWeight:
            FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding:
          const EdgeInsets.all(
              20),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              /// Progression
              Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,

                children: const [
                  Text(
                    "Progression",
                    style: TextStyle(
                      fontWeight:
                      FontWeight
                          .w600,
                    ),
                  ),

                  Text(
                    "100%",
                    style: TextStyle(
                      color:
                      Color(
                        0xFF26B6A6,
                      ),
                      fontWeight:
                      FontWeight
                          .bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                  height: 8),

              ClipRRect(
                borderRadius:
                BorderRadius
                    .circular(
                    30),

                child:
                const LinearProgressIndicator(
                  value: 1,
                  minHeight: 8,
                  color:
                  Color(
                    0xFF26B6A6,
                  ),
                ),
              ),

              const SizedBox(
                  height: 25),

              /// Header
              Container(
                width:
                double.infinity,

                padding:
                const EdgeInsets
                    .all(24),

                decoration:
                BoxDecoration(
                  color:
                  const Color(
                    0xFF26B6A6,
                  ),

                  borderRadius:
                  BorderRadius
                      .circular(
                      25),
                ),

                child: Column(
                  children: [

                    Container(
                      width: 90,
                      height: 90,

                      decoration:
                      BoxDecoration(
                        color: Colors
                            .white
                            .withOpacity(
                            .15),

                        shape:
                        BoxShape
                            .circle,
                      ),

                      child:
                      const Icon(
                        Icons.verified_user,
                        color: Colors
                            .white,
                        size: 45,
                      ),
                    ),

                    const SizedBox(
                        height:
                        15),

                    const Text(
                      "Validation finale",
                      textAlign:
                      TextAlign
                          .center,

                      style:
                      TextStyle(
                        color:
                        Colors
                            .white,
                        fontSize:
                        24,
                        fontWeight:
                        FontWeight
                            .bold,
                      ),
                    ),

                    const SizedBox(
                        height:
                        8),

                    const Text(
                      "Téléchargez votre pièce d'identité afin de sécuriser votre compte.",
                      textAlign:
                      TextAlign
                          .center,

                      style:
                      TextStyle(
                        color: Colors
                            .white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                  height: 30),

              /// Upload
              Container(
                padding:
                const EdgeInsets
                    .all(20),

                decoration:
                BoxDecoration(
                  color:
                  Colors.white,

                  borderRadius:
                  BorderRadius
                      .circular(
                      20),

                  boxShadow: [
                    BoxShadow(
                      color: Colors
                          .black
                          .withOpacity(
                          .05),
                      blurRadius:
                      10,
                    ),
                  ],
                ),

                child: Column(
                  children: [

                    if (identityImage ==
                        null)

                      Column(
                        children: [

                          const Icon(
                            Icons
                                .cloud_upload_outlined,
                            size:
                            70,
                            color:
                            Color(
                              0xFF26B6A6,
                            ),
                          ),

                          const SizedBox(
                              height:
                              15),

                          const Text(
                            "Ajouter votre pièce d'identité",
                            textAlign:
                            TextAlign
                                .center,
                            style:
                            TextStyle(
                              fontWeight:
                              FontWeight.bold,
                              fontSize:
                              18,
                            ),
                          ),
                        ],
                      )

                    else

                      ClipRRect(
                        borderRadius:
                        BorderRadius
                            .circular(
                            18),

                        child:
                        Image.file(
                          identityImage!,
                          height:
                          220,
                          width:
                          double
                              .infinity,
                          fit: BoxFit
                              .cover,
                        ),
                      ),

                    const SizedBox(
                        height:
                        20),

                    ElevatedButton
                        .icon(
                      onPressed:
                      pickImage,

                      icon:
                      const Icon(
                        Icons
                            .upload_file,
                        color: Colors
                            .white,
                      ),

                      label:
                      const Text(
                        "Choisir un fichier",
                        style:
                        TextStyle(
                          color: Colors
                              .white,
                        ),
                      ),

                      style:
                      ElevatedButton
                          .styleFrom(
                        backgroundColor:
                        const Color(
                          0xFF26B6A6,
                        ),

                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(
                              15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                  height: 25),

              /// Récapitulatif
              Container(
                padding:
                const EdgeInsets
                    .all(18),

                decoration:
                BoxDecoration(
                  color:
                  Colors.white,

                  borderRadius:
                  BorderRadius
                      .circular(
                      20),

                  boxShadow: [
                    BoxShadow(
                      color: Colors
                          .black
                          .withOpacity(
                          .05),
                      blurRadius:
                      10,
                    ),
                  ],
                ),

                child: const Column(
                  crossAxisAlignment:
                  CrossAxisAlignment
                      .start,

                  children: [

                    Text(
                      "Récapitulatif",
                      style:
                      TextStyle(
                        fontSize:
                        18,
                        fontWeight:
                        FontWeight
                            .bold,
                      ),
                    ),

                    SizedBox(
                        height:
                        15),

                    ListTile(
                      leading:
                      Icon(Icons
                          .person),
                      title:
                      Text(
                        "Informations personnelles",
                      ),
                    ),

                    ListTile(
                      leading:
                      Icon(Icons
                          .lock),
                      title:
                      Text(
                        "Sécurité du compte",
                      ),
                    ),

                    ListTile(
                      leading:
                      Icon(Icons
                          .location_on),
                      title:
                      Text(
                        "Adresse enregistrée",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                  height: 25),

              /// Conditions
              Container(
                padding:
                const EdgeInsets
                    .all(16),

                decoration:
                BoxDecoration(
                  color:
                  Colors.white,

                  borderRadius:
                  BorderRadius
                      .circular(
                      18),
                ),

                child:
                CheckboxListTile(
                  value:
                  acceptedTerms,

                  contentPadding:
                  EdgeInsets.zero,

                  activeColor:
                  const Color(
                    0xFF26B6A6,
                  ),

                  title:
                  const Text(
                    "J'accepte les conditions d'utilisation et la politique de confidentialité.",
                  ),

                  onChanged:
                      (value) {
                    setState(() {
                      acceptedTerms =
                          value ??
                              false;
                    });
                  },
                ),
              ),

              const SizedBox(
                  height: 35),

              RegisterButton(
                text:
                "Créer mon compte",

                onPressed:
                acceptedTerms
                    ? () {
                  Navigator.pushNamed(
                    context,
                    "/home",
                  );
                }
                    : () {
                  ScaffoldMessenger.of(
                      context)
                      .showSnackBar(
                    const SnackBar(
                      content:
                      Text(
                        "Veuillez accepter les conditions.",
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}