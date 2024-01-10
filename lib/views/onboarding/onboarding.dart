import 'package:flutter/material.dart';
import 'package:muslim_brands/views/onboarding/introPage2..dart';
import 'package:muslim_brands/views/onboarding/intropage1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              children: const [IntroPage1Screen(), IntroPage2Screen()],
            ),
            Container(
                alignment: const Alignment(0, 0.8),
                child:
                    SmoothPageIndicator(controller: pageController, count: 2))
          ],
        ),
      ),
    );
  }
}
