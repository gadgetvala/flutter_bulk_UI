import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/model/ui_model/onboarding_screen_model.dart';
import 'package:softwarelab/res/res.dart';

final onboardingProvider =
    ChangeNotifierProvider.autoDispose((ref) => OnboardingProvider());

class OnboardingProvider extends ChangeNotifier {
  // Variables
  late Timer carosalPeriodic;
  int currentPage = 0;
  final pageController = PageController();
  final List<OnboardingScreenModel> data = [
    OnboardingScreenModel(
      backgroundImage: assets.onboarding_1,
      heading: 'Quality, Convenient, Local',
      description:
          'Sell your farm fresh products directly to\nconsumers, cutting out the middleman and\nreducing emissions of the global supply chain.',
      primaryButtonTitle: 'Join the movement!',
      primaryButtonBackgroundColor: colors.tertiary,
    ),
    OnboardingScreenModel(
      backgroundImage: assets.onboarding_2,
      heading: 'Door Delivery',
      description:
          'Our team of delivery drivers will make sure\nyour orders are picked up on time and\npromptly delivered to your customers.',
      primaryButtonTitle: 'Join the movement!',
      primaryButtonBackgroundColor: colors.primary,
    ),
    OnboardingScreenModel(
      backgroundImage: assets.onboarding_3,
      heading: 'Love the Earth',
      description:
          'We love the earth and know you do too! Join us\nin reducing our carbon footprint one order at\na time.',
      primaryButtonTitle: 'Join the movement!',
      primaryButtonBackgroundColor: colors.secondary,
    ),
  ];

  // Consturctor
  OnboardingProvider() {
    // Start Timer
    carosalPeriodic = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentPage < data.length) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      // Animate to Page
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  // Disposing Methods
  @override
  void dispose() {
    carosalPeriodic.cancel();
    pageController.dispose();
    super.dispose();
  }

  // Getters
  get currentPageIndex => currentPage;

  // Setters
  void setCurrentPage(int index) {
    currentPage = index;
    notifyListeners();
  }
}
