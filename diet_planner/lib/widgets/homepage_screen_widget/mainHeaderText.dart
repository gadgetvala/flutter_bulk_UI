import 'package:flutter/material.dart';

class MainHeaderText extends StatelessWidget {
  final String heading;
  final String info;

  MainHeaderText(
    this.heading,
    this.info,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            heading,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Color(0xff68265C),
            ),
          ),
          Text(
            info,
            style: TextStyle(
              color: Color(0xffB677AB),
            ),
          ),
        ],
      ),
    );
  }
}
