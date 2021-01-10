import 'package:flutter/material.dart';

import './bottom_drawer_screen.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/homepage.png',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Text(
            'Welcome to\nDonut Monster',
            style: TextStyle(
              color: Color(0xff47201D),
              fontSize: 35,
              fontWeight: FontWeight.w400,
              letterSpacing: 4,
              wordSpacing: 5,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Start shopping in comfort and\nfeel the pleasure of each dish.',
            style: TextStyle(
              color: Color(0xffA19493),
              fontSize: 20,
              letterSpacing: 2,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            color: Color(0xffCA2B20),
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, BottomDrawerScreen.routeName);
            },
            child: Text(
              "Continue",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
