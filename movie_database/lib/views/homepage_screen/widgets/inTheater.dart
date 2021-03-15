import 'package:flutter/material.dart';

import './movieGenres.dart';
import './movieSwiper.dart';
import './movieNameBanner.dart';

class InTheater extends StatefulWidget {
  @override
  _InTheaterState createState() => _InTheaterState();
}

class _InTheaterState extends State<InTheater> {
  int currentMovie;

  void setCurrentMovieIndex(movieIndex) {
    setState(() {
      currentMovie = movieIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 75,
            margin: EdgeInsets.only(top: 15),
            child: MovieGenres(),
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
