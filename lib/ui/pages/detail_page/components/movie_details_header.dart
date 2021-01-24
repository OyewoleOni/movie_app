import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieDetailHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailHeader({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${this.movie.year} . ${this.movie.genre}".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.cyan),
        ),
        Text(
          movie.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
        ),
        Text.rich(TextSpan(
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
          children: [
            TextSpan(
              text: movie.plot
            ),
            TextSpan(
              text: "More...", style: TextStyle(color: Colors.indigoAccent,)
            )
          ]
        ))
      ],
    );
  }
}
