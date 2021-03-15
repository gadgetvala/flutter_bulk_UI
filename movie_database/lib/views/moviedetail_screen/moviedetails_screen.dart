import 'package:flutter/material.dart';

import './../../models/movies.dart';

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
      body: Column(children: <Widget>[
        Container(
          height: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image.network(
              currentMovie['image'],
            ),
          ),
        ),
      ]),
    );
  }
}
