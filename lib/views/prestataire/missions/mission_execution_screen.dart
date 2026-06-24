import 'package:flutter/material.dart';

class MissionExecutionScreen extends StatelessWidget {
  const MissionExecutionScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mission en cours"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const Text(
              "Réparation TV",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/missionCompleted",
                  );
                },
                child: const Text(
                  "Terminer la mission",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}