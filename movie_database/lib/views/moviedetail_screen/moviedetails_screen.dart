import 'package:flutter/material.dart';

import './../../models/movies.dart';
import './widgets/movieHeader.dart';
import './widgets/genres.dart';
import './widgets/movieSummary.dart';
import './widgets/crew.dart';
import './widgets/floatingDetail.dart';

class MovieDetailsScreen extends StatelessWidget {
  static String routeName = '/movie-details-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, int>;
    final currentIndex = routeArgs['index'];
    final currentMovie = movies[currentIndex];

    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                    ),
                    child: Image.network(
                      currentMovie['image'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                MovieHeader(
                  currentMovie["name"],
                  currentMovie["year"],
                  currentMovie["rated"],
                  currentMovie["time"],
                ),
                Container(
                  height: 60,
                  child: MovieGenres(),
                ),
                MovieSummary(currentMovie['summary']),
                Crew(),
              ],
            ),
            Positioned(
              top: 210,
              right: 0,
              child: FloatingDetail(),
            )
          ],
        ),
      ),
    );
  }
}
