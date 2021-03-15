import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import './../../../models/movies.dart';

class MovieSwiper extends StatelessWidget {
  final Function setCurrentMovieIndex;

  MovieSwiper(this.setCurrentMovieIndex);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.fromLTRB(40, 10, 0, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: InkWell(
            onTap: () {
              print('suraj');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                movies[index]["image"],
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      },
      onIndexChanged: (int index) => setCurrentMovieIndex(index),
      control: new SwiperControl(),
      itemCount: movies.length,
      itemWidth: 300.0,
      layout: SwiperLayout.STACK,
    );
  }
}
