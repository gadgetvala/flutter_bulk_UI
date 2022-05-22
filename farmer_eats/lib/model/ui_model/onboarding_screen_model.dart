import 'package:flutter/material.dart';

class OnboardingScreenModel {
  final String backgroundImage;
  final String heading;
  final String description;
  final String primaryButtonTitle;
  final Color primaryButtonBackgroundColor;

  const OnboardingScreenModel({
    required this.backgroundImage,
    required this.heading,
    required this.description,
    required this.primaryButtonTitle,
    required this.primaryButtonBackgroundColor,
  });
}
