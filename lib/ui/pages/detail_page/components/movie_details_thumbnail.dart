
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
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0x00f5f5f5),
              Color(0xfff5f5f5)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)
          ),
          height: 80,
        )
      ],
    );
  }
}