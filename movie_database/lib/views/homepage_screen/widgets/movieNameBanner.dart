import 'package:flutter/material.dart';

import './../../../models/movies.dart';

class MovieNameBanner extends StatelessWidget {
  final index;
  MovieNameBanner(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text(
            movies[index]['name'],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                movies[index]['rating'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 6),
              Icon(
                Icons.star,
                color: Color(0xffFCC319),
                size: 18,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
