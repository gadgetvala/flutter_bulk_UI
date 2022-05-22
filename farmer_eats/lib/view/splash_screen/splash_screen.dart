import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/view/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initializeResources(context: context);
      initialize();
    });
  }

  Future initialize() async {
    await Future.delayed(const Duration(milliseconds: 5000), () async {
      Navigator.pushNamedAndRemoveUntil(
        context,
        OnboardingScreen.id,
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset("assets/logo/logo.png"),
          ),
        ),
      ),
    );
  }
}
