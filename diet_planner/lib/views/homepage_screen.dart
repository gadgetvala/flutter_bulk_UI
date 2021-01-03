import 'package:flutter/material.dart';

import './../widgets/homepage_screen_widget/apptopheader.dart';

class HomepageScreen extends StatelessWidget {
  static String routeName = '/homepage-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color(0xffE8C6E2),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppTopHeader(),
          ],
        ),
      ),
    );
  }
}
