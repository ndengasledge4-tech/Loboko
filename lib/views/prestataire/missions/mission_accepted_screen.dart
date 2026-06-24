import 'package:flutter/material.dart';

class MissionAcceptedScreen extends StatelessWidget {
  const MissionAcceptedScreen({super.key});

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
                Icons.check_circle,
                color: Colors.green,
                size: 120,
              ),

              const SizedBox(height: 20),

              const Text(
                "Mission acceptée",
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
                    "/missions",
                  );
                },
                child: const Text(
                  "Voir mes missions",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}