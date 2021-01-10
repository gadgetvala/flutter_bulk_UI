import 'package:flutter/material.dart';

import './../widgets/homepage/homepageHeader.dart';

class HomepageScreen extends StatelessWidget {
  static String routeName = '/homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HomepageHeader(),
          ],
        ),
      ),
    );
  }
}
