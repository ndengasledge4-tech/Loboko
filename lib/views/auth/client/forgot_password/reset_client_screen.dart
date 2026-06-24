import 'package:flutter/material.dart';

class ResetClientScreen extends StatefulWidget {
  const ResetClientScreen({super.key});

  @override
  State<ResetClientScreen> createState() =>
      _ResetClientScreenState();
}

class _ResetClientScreenState
    extends State<ResetClientScreen> {

  bool obscure1 = true;
  bool obscure2 = true;

  final otpController =
  TextEditingController();

  final passwordController =
  TextEditingController();

  final confirmController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: const Text(
          "Nouveau mot de passe",
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [

              const SizedBox(height: 20),

              Container(
                width: 100,
                height: 100,

                decoration: BoxDecoration(
                  color: const Color(0xFF26B6A6)
                      .withOpacity(.1),

                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.security,
                  size: 50,
                  color: Color(0xFF26B6A6),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Créer un nouveau mot de passe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: otpController,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: "Code OTP",

                  prefixIcon: const Icon(
                    Icons.sms_outlined,
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

              const SizedBox(height: 15),

              TextField(
                controller: passwordController,
                obscureText: obscure1,

                decoration: InputDecoration(
                  hintText: "Nouveau mot de passe",

                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFF26B6A6),
                  ),

                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscure1 = !obscure1;
                      });
                    },
                    icon: Icon(
                      obscure1
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
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

              const SizedBox(height: 15),

              TextField(
                controller: confirmController,
                obscureText: obscure2,

                decoration: InputDecoration(
                  hintText:
                  "Confirmer le mot de passe",

                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFF26B6A6),
                  ),

                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscure2 = !obscure2;
                      });
                    },
                    icon: Icon(
                      obscure2
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
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

              const SizedBox(height: 40),

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
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/loginClient",
                          (route) => false,
                    );
                  },

                  child: const Text(
                    "Valider",
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