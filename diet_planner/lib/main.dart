import 'package:flutter/material.dart';

import './views/question_screen.dart';
import './views/start_screen.dart';
import './views/homepage_screen.dart';
import './views/bottomDrawer.dart';

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
      home: StartScreen(),
      routes: ({
        QuestionScreen.routeName: (ctx) => QuestionScreen(),
        HomepageScreen.routeName: (ctx) => HomepageScreen(),
        BottomDrawer.routeName: (ctx) => BottomDrawer(),
      }),
    );
  }
}
