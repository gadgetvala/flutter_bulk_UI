import 'package:flutter/material.dart';

class MovieGenres extends StatelessWidget {
  final genres = [
    'Action',
    "Horror",
    "Drama",
    "Romance",
    "Comedy",
    "Sci-fi",
    "Documentary",
    "Musical",
    "Thriller"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: genres.length,
      itemBuilder: (ctx, i) {
        return Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.3), width: 2),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            child: Text(
              genres[i],
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
