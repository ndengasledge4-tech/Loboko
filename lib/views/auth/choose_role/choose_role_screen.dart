import 'package:flutter/material.dart';

import 'widgets/role_card.dart';

class ChooseRoleScreen extends StatelessWidget {
  const ChooseRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFF8F5EF),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:
        const Color(0xFFF8F5EF),
        elevation: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.all(24),

            child: Column(
              children: [

                const SizedBox(height: 20),

                Container(
                  height: 100,
                  width: 100,

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius:
                    BorderRadius.circular(
                      25,
                    ),

                    boxShadow: [
                      BoxShadow(
                        color:
                        Colors.black12,
                        blurRadius: 15,
                        offset:
                        const Offset(
                          0,
                          5,
                        ),
                      ),
                    ],
                  ),

                  child: Padding(
                    padding:
                    const EdgeInsets.all(
                      12,
                    ),
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Choisissez votre profil",

                  textAlign:
                  TextAlign.center,

                  style: TextStyle(
                    fontSize: 22,
                    fontWeight:
                    FontWeight.bold,
                    color:
                    Color(0xFF1E3A5F),
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Sélectionnez le type de compte que vous souhaitez utiliser.",

                  textAlign:
                  TextAlign.center,

                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 35),

                const RoleCard(
                  title: "Client",

                  subtitle:
                  "Je recherche un prestataire pour réaliser un service.",

                  icon:
                  Icons.person_search,

                  route:
                  "/loginClient",
                ),

                const SizedBox(height: 15),

                const RoleCard(
                  title: "Prestataire",

                  subtitle:
                  "Je propose mes services et trouve de nouveaux clients.",

                  icon:
                  Icons.handyman,

                  route:
                  "/loginPrestataire",
                ),

                const SizedBox(height: 30),

                const Text(
                  "Loboko • La main qui vous aide",

                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}