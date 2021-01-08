import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import './../widgets/homepage_screen_widget/apptopheader.dart';
import './../widgets/homepage_screen_widget/mainHeaderText.dart';
import './../widgets/homepage_screen_widget/breakFastCard.dart';
import './../widgets/homepage_screen_widget/horizontalAdditionSlider.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircularPercentIndicator(
                    radius: 130.0,
                    lineWidth: 6.0,
                    percent: 0.5,
                    center: Text(
                      "1200 \n Calories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff833D76),
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                    ),
                    backgroundColor: Color(0xffE3B2DB),
                    progressColor: Color(0xffFFFEFC),
                  ),
                  Column(
                    children: <Widget>[
                      MainHeaderText(
                        '123',
                        'that you consume',
                      ),
                      MainHeaderText(
                        '0',
                        'that you burn',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
                decoration: BoxDecoration(
                  color: Color(0xffFEFEFE),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  'Healthier!',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Text(
                                '2 days of eating healthy food',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFFF1FD),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(200))),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Icon(Icons.arrow_right_alt_outlined,
                                  color: Color(0xffC97BBA)),
                            ),
                          )
                        ],
                      ),
                      BreakFastCard(),
                      HorizontalAdditionSlider(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
