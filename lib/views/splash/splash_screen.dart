import 'dart:async';
import 'package:flutter/material.dart';

import 'widgets/splash_logo.dart';
import 'widgets/splash_loader.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  Future<void> _checkUser() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );

    bool isLoggedIn = false;

    if (isLoggedIn) {
      Navigator.pushReplacementNamed(
        context,
        "/home",
      );
    } else {
      Navigator.pushReplacementNamed(
        context,
        "/onboarding",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: const [

            SplashLogo(),

            SizedBox(height: 30),

            SplashLoader(),

          ],
        ),
      ),
    );
  }
}