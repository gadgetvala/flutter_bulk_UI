import 'package:flutter/material.dart';

import './views/startup_screen.dart';
import './views/bottom_drawer_screen.dart';
import './views/homepage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartupScreen(),
      routes: {
        BottomDrawerScreen.routeName: (ctx) => BottomDrawerScreen(),
        HomepageScreen.routeName: (ctx) => HomepageScreen(),
      },
    );
  }
}
