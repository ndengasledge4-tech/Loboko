import 'package:flutter/material.dart';

import 'widgets/onboarding_logo_page.dart';
import 'widgets/onboarding_image_page.dart';
import 'widgets/onboarding_advantages_page.dart';
import 'widgets/onboarding_payment_page.dart';
import 'widgets/onboarding_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState
    extends State<OnboardingScreen> {
  final PageController _controller =
  PageController();

  int currentPage = 0;

  final List<Widget> pages = const [
    OnboardingLogoPage(),
    OnboardingImagePage(),
    OnboardingAdvantagesPage(),
    OnboardingPaymentPage(),
  ];

  void nextPage() {
    if (currentPage < pages.length - 1) {
      _controller.nextPage(
        duration:
        const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacementNamed(
        context,
        "/chooseRole",
      );
    }
  }

  void skipOnboarding() {
    Navigator.pushReplacementNamed(
      context,
      "/chooseRole",
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isLastPage =
        currentPage == pages.length - 1;

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,

                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },

                children: pages,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 25,
              ),

              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [
                  /// PASSER
                  TextButton(
                    onPressed: skipOnboarding,

                    child: const Text(
                      "Passer",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight:
                        FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  /// INDICATEUR
                  OnboardingIndicator(
                    currentIndex: currentPage,
                    count: pages.length,
                  ),

                  /// BOUTON ROND
                  GestureDetector(
                    onTap: nextPage,

                    child: Container(
                      width: 50,
                      height: 50,

                      decoration:
                      const BoxDecoration(
                        color:
                        Color(0xFF26B6A6),
                        shape: BoxShape.circle,
                      ),

                      child: Icon(
                        isLastPage
                            ? Icons.check
                            : Icons.arrow_forward,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}