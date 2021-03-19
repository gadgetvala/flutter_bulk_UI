import 'package:flutter/material.dart';

class FloatingDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return Container(
      width: mq.width - 50,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(height: 4),
                Text("8.2/10"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.star_outline),
                SizedBox(height: 4),
                Text("Rate This"),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.crop_square,
                  color: Colors.greenAccent,
                ),
                SizedBox(height: 4),
                Text("MetaScore"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
