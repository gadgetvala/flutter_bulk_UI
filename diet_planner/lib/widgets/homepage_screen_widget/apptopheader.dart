import 'package:flutter/material.dart';

class AppTopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: Text(
            'Hi, Jhon!',
            style: TextStyle(
              color: Color(0xff68265C),
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          height: 100,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xffFF9B70),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xffffffff),
          ),
        )
      ],
    );
  }
}
