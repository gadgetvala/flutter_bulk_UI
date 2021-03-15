import 'package:flutter/material.dart';

import './movieGenres.dart';
import './movieSwiper.dart';
import './movieNameBanner.dart';

class InTheater extends StatefulWidget {
  @override
  _InTheaterState createState() => _InTheaterState();
}

class _InTheaterState extends State<InTheater> {
  int currentMovie = 0;
  int currentGenre = 0;

  void setCurrentMovieIndex(movieIndex) {
    setState(() {
      currentMovie = movieIndex;
    });
  }

  void setCurrentGenreIndex(genreIndex) {
    setState(() {
      currentGenre = genreIndex;
    });
    print(currentGenre);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 75,
            margin: EdgeInsets.only(top: 15),
            child: MovieGenres(setCurrentGenreIndex, currentGenre),
          ),
          Expanded(
            child: MovieSwiper(setCurrentMovieIndex),
          ),
          MovieNameBanner(currentMovie),
        ],
      ),
    );
  }
}
