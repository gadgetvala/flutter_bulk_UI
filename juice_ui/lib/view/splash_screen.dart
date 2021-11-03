import 'package:flutter/material.dart';
import 'package:juice/res/res.dart';

import 'dashboard_screen/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "/splashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      initializeResources(context: context);
      initialize();
    });
  }

  Future initialize() async {
    // final pref = locator<Preferences>();
    // if (pref.fcmToken == null) locator<FcmToken>().getFcmToken();
    await Future.delayed(
      const Duration(milliseconds: 5000),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, DashboardScreen.id, (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_screen_backgroun.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.asset('assets/images/app_logo.png'),
          ),
        ),
      ),
    );
  }
}
