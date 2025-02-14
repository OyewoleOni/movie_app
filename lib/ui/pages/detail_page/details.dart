import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/ui/pages/detail_page/components/movie_details_header_with_poster.dart';

import 'components/horizontal_line.dart';
import 'components/movie_details_cast.dart';
import 'components/movie_details_thumbnail.dart';
import 'components/movie_extra_posters.dart';

class MovieListViewDetail extends StatelessWidget {
  
  final String movieName;
  final Movie movie;

  const MovieListViewDetail({Key key, this.movieName, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details of ${this.movieName}"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: [
          MovieDetailsThumbnail(thumbnailUrl: this.movie.images[0]),
          MovieDetaisHeaderWithPoster(movie: this.movie),
          HorizontalLine(),
          MovieDetailsCast(movie: this.movie),
          HorizontalLine(),
          MovieExtraPosters(postersUrl: this.movie.images,)
        ],
      ),
      // body: Center(
      //   child: Container(
      //     child: RaisedButton(
      //       onPressed: (){
      //         Navigator.pop(context);
      //       },
      //       child: Text("Go Back ${this.movie.title}"),
      //     ),
      //   ),
      // ),
    );
  }
}
