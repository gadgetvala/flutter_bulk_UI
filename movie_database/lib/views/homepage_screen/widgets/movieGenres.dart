import 'package:flutter/material.dart';

import './../../../models/movies.dart';

class MovieGenres extends StatelessWidget {
  final Function setsetCurrentGenreIndex;
  final int currentGenre;

  MovieGenres(this.setsetCurrentGenreIndex, this.currentGenre);

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
            border: Border.all(
              color: currentGenre == i
                  ? Colors.black
                  : Colors.black.withOpacity(0.3),
              width: 2,
            ),
            color: currentGenre == i ? Color(0xffF27190) : Colors.transparent,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: InkWell(
            onTap: () {
              setsetCurrentGenreIndex(i);
            },
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
          ),
        );
      },
    );
  }
}
