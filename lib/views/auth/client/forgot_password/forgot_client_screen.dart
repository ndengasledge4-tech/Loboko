import 'package:flutter/material.dart';

class ForgotClientScreen extends StatefulWidget {
  const ForgotClientScreen({super.key});

  @override
  State<ForgotClientScreen> createState() =>
      _ForgotClientScreenState();
}

class _ForgotClientScreenState
    extends State<ForgotClientScreen> {

  final TextEditingController phoneController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: const Text(
          "Mot de passe oublié",
          style: TextStyle(
            color: Color(0xFF26B6A6),
            fontWeight: FontWeight.bold,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Color(0xFF26B6A6),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [

              const SizedBox(height: 30),

              Container(
                width: 100,
                height: 100,

                decoration: BoxDecoration(
                  color: const Color(0xFF26B6A6)
                      .withOpacity(.1),

                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.lock_reset,
                  size: 50,
                  color: Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Réinitialiser votre mot de passe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Entrez votre numéro de téléphone afin de recevoir un code OTP.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 35),

              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,

                decoration: InputDecoration(
                  hintText: "Téléphone",

                  prefixIcon: const Icon(
                    Icons.phone_outlined,
                    color: Color(0xFF26B6A6),
                  ),

                  filled: true,
                  fillColor: const Color(0xFFF5F7FA),

                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xFF26B6A6),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(16),
                    ),
                  ),

                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/resetClient",
                    );
                  },

                  child: const Text(
                    "Envoyer le code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}