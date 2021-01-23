import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final String posterUrl;

  const MoviePoster({Key key, this.posterUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(posterUrl),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
