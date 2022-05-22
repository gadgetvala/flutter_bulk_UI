import 'package:flutter/material.dart';
import 'package:softwarelab/view/auth/forgot_password_screen/forgot_password_screen.dart';
import 'package:softwarelab/view/auth/login_screen/login_screen.dart';
import 'package:softwarelab/view/auth/reset_password_screen/reset_password_screen.dart';
import 'package:softwarelab/view/auth/signup_screen/signup_screen.dart';
import 'package:softwarelab/view/auth/verify_otp_screen/verify_otp_screen.dart';
import 'package:softwarelab/view/onboarding_screen/onboarding_screen.dart';
import 'package:softwarelab/view/splash_screen/splash_screen.dart';

// ignore: avoid_classes_with_only_static_members
class AppRouter {
  static Route router(RouteSettings settings) {
    switch (settings.name) {

      /// Splash Screen
      case SplashScreen.id:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      /// ==============================================================  ///

      /// OnBoarding Screen
      case OnboardingScreen.id:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      /// ==============================================================  ///
      /// ===========================AUTH===============================  ///
      // Login
      case LoginScreen.id:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      // Singup
      case SignupScreen.id:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      // Forogot Passoword
      case ForgotPasswordScreen.id:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      // Verify OTP Screen
      case VerifyOtpScreen.id:
        return MaterialPageRoute(builder: (_) => const VerifyOtpScreen());
      // Verify OTP Screen
      case ResetPasswordScren.id:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScren());

      /// ==============================================================  ///

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Error"),
          ),
          body: const Center(child: Text("404 NOT FOUND")),
        );
      },
    );
  }
}
