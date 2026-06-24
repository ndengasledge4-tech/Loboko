import 'package:flutter/material.dart';
import 'widgets/review_form.dart';

import 'package:loboko/views/client/widgets/client_bottom_navbar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Évaluation",
          style: TextStyle(color: Colors.black),
        ),
      ),

      bottomNavigationBar: const ClientBottomNavBar(
        currentIndex: 0,
      ),

      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ReviewForm(),
        ),
      ),
    );
  }
}