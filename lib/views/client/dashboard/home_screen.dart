import 'package:flutter/material.dart';

import 'widgets/home_header.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/offer_slider.dart';
import 'widgets/categories_section.dart';
import 'widgets/recommendation_section.dart';
import 'widgets/nearby_providers_section.dart';

import 'package:loboko/views/client/widgets/client_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5EF),

      bottomNavigationBar: const ClientBottomNavBar(
        currentIndex: 0,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: const [

              HomeHeader(),

              SizedBox(height: 20),

              SearchBarWidget(),

              SizedBox(height: 20),

              OfferSlider(),

              SizedBox(height: 25),

              CategoriesSection(),

              SizedBox(height: 25),

              RecommendationSection(),

              SizedBox(height: 25),

              NearbyProvidersSection(),

              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}