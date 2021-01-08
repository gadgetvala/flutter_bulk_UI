import 'package:flutter/material.dart';

class BreakFastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFF1EB),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/breakfast2.png',
            height: 90,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Breakfast',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff3F4F64),
                ),
              ),
              Container(
                width: 150,
                child: Text(
                  'Eggs, rice, soy sauce, fried onions',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff3F4F64),
                  ),
                  overflow: TextOverflow.fade,
                ),
              ),
              RaisedButton(
                onPressed: () {},
                color: Color(0xffFF9B70),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Text(
                  'Total consumption of \n120 calories',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
