
import 'package:flutter/material.dart';

class MovieDetailsThumbnail extends StatelessWidget {

  final String thumbnailUrl;

  const MovieDetailsThumbnail({Key key, this.thumbnailUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(this.thumbnailUrl), fit: BoxFit.cover),
              )
            ),
            Icon(Icons.play_circle_outline, size: 100, color: Colors.white,)
          ]
        )
      ],
    );
  }
}