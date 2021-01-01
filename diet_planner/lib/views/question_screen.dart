import 'package:flutter/material.dart';

import './../widgets/start_screen_widget/custom_header.dart';
import './../widgets/question_screen_widget/custom_grid.dart';
import './../widgets/question_screen_widget/custom_drop_down_menu.dart';

class QuestionScreen extends StatelessWidget {
  static String routeName = '/question-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomHeader(
              headerText: 'What\'s your goal?',
              customFontSize: 35.0,
              customFontWeight: FontWeight.w800,
              customFontColor: Colors.black,
              customPadding: 8.0,
              position: TextAlign.start,
            ),
            CustomGrid(),
            CustomHeader(
              headerText: 'Target reached when?',
              customFontSize: 35.0,
              customFontWeight: FontWeight.w600,
              customFontColor: Colors.black,
              customPadding: 8.0,
              position: TextAlign.start,
            ),
            CustomDropDownMenu(),
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
                horizontal: 120,
                vertical: 16.0,
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
