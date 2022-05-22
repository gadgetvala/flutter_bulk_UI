import 'package:flutter/material.dart';
import 'package:juice/view/dashboard_screen/dashboard_screen.dart';
import 'package:juice/view/detail_screen/detail_screen.dart';
import 'package:juice/view/splash_screen.dart';
import 'package:juice/view/tabbar_controller/tabbar_controller.dart';

// ignore: avoid_classes_with_only_static_members
class AppRouter {
  static Route router(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.id:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case DashboardScreen.id:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case DetailScreen.id:
        return MaterialPageRoute(
          builder: (_) =>
              DetailScreen(selectedIndex: settings.arguments! as int),
        );
      case TabBarController.id:
        return MaterialPageRoute(builder: (_) => const TabBarController());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(child: Text("404 NOT FOUND")),
      );
    });
  }
}
