import 'package:flutter/material.dart';

import './question_screen.dart';
import './../widgets/start_screen_widget/custom_header.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          CustomHeader(
            headerText: 'Set a healthy diet',
            customFontSize: 40.0,
            customFontWeight: FontWeight.w600,
            customFontColor: Colors.black,
            customPadding: 8.0,
            position: TextAlign.center,
          ),
          SizedBox(height: 50),
          CustomHeader(
            headerText: 'Let\'s build a habit that makes you love',
            customFontSize: 20.0,
            customFontWeight: FontWeight.w300,
            customFontColor: Color(0xff8F9BB5),
            customPadding: 8.0,
            position: TextAlign.center,
          ),
          SizedBox(height: 50),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(QuestionScreen.routeName);
            },
            color: Color(0xffFF9B70),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 14.0,
            ),
            child: Text(
              'From now on',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          SizedBox(height: 40),
          Image.asset('assets/cutout.png', fit: BoxFit.contain),
        ],
      ),
    );
  }
}
