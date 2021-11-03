import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const id = '/dashboardScreen';
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
