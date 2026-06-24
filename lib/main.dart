import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'views/splash/splash_screen.dart';
import 'package:loboko/views/admin/login/login_admin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Loboko",

      theme: ThemeData(
        primaryColor: const Color(0xFF1E88E5),
        scaffoldBackgroundColor: Colors.white,
      ),

      home: const SplashScreen(),
      //home: const LoginAdminScreen(),

      routes: AppRoutes.routes,
    );
  }
}