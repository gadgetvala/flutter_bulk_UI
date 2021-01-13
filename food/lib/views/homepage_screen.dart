import 'package:flutter/material.dart';

import './../widgets/homepage/homepageHeader.dart';
import './../widgets/homepage/headerSelectionMenu.dart';
import './../widgets/homepage/productMainHeaders.dart';
import './../widgets/homepage/productPage.dart';

class HomepageScreen extends StatefulWidget {
  static String routeName = '/homepage';

  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  String currentSelectedItem = 'z1';

  setSelectedItem(itemCode) {
    setState(() {
      currentSelectedItem = itemCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HomepageHeader(),
            SizedBox(height: 10),
            HeaderSelectionMenu(setSelectedItem, currentSelectedItem),
            SizedBox(height: 30),
            ProductMainHeaders(),
            ProductPage(currentSelectedItem),
          ],
        ),
      ),
    );
  }
}
