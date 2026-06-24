import 'package:flutter/material.dart';

class OtpPrestataireScreen extends StatefulWidget {
  const OtpPrestataireScreen({super.key});

  @override
  State<OtpPrestataireScreen> createState() =>
      _OtpPrestataireScreenState();
}

class _OtpPrestataireScreenState
    extends State<OtpPrestataireScreen> {

  final List<TextEditingController> controllers =
  List.generate(
    6,
        (_) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF26B6A6),
          ),
        ),

        title: const Text(
          "Vérification OTP",
          style: TextStyle(
            color: Color(0xFF26B6A6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),

          child: Column(
            children: [

              const SizedBox(height: 20),

              Container(
                width: 120,
                height: 120,

                decoration: BoxDecoration(
                  color: const Color(0xFF26B6A6)
                      .withOpacity(0.10),

                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.sms_outlined,
                  size: 60,
                  color: Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Vérifiez votre numéro",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E3A5F),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Nous avons envoyé un code de vérification à votre numéro de téléphone.",
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 35),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: List.generate(
                  6,
                      (index) => SizedBox(
                    width: 50,

                    child: TextField(
                      controller:
                      controllers[index],

                      keyboardType:
                      TextInputType.number,

                      textAlign:
                      TextAlign.center,

                      maxLength: 1,

                      decoration:
                      InputDecoration(
                        counterText: "",

                        filled: true,
                        fillColor:
                        const Color(
                            0xFFF5F7FA),

                        border:
                        OutlineInputBorder(
                          borderRadius:
                          BorderRadius
                              .circular(
                            15,
                          ),

                          borderSide:
                          BorderSide
                              .none,
                        ),
                      ),

                      onChanged: (value) {
                        if (value.isNotEmpty &&
                            index < 5) {
                          FocusScope.of(
                            context,
                          ).nextFocus();
                        }
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {

                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/dashboardPrestataire",
                          (route) => false,
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xFF26B6A6),

                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),

                  child: const Text(
                    "Vérifier",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {},

                child: const Text(
                  "Renvoyer le code",
                  style: TextStyle(
                    color: Color(0xFF26B6A6),
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Le code expire dans 02:00",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}