
import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/ui/pages/detail_page/components/movie_poster.dart';

import 'movie_details_header.dart';

class MovieDetaisHeaderWithPoster extends StatelessWidget {
  final Movie movie;

  const MovieDetaisHeaderWithPoster({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children:[
          MoviePoster(posterUrl: movie.images[0].toString(),),
          SizedBox(
            width: 16,
          ),
          
          Expanded(child: MovieDetailHeader(movie: this.movie,),)

        ]
      ),
    );
  }
}