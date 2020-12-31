import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mengatur pola makan sehat',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mari kita bangun kebiasaan yang membaias cinta Anda',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff8F9BB5),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          RaisedButton(
            onPressed: () {},
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
              'Mulai Sekarang',
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
