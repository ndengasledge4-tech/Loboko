import 'package:flutter/material.dart';

class MissionCompletedScreen extends StatelessWidget {
  const MissionCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Icon(
                Icons.handshake,
                color: Colors.green,
                size: 120,
              ),

              const SizedBox(height: 20),

              const Text(
                "Mission terminée",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/revenus",
                  );
                },
                child: const Text(
                  "Voir les revenus",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}