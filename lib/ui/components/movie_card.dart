

 import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

import '../details.dart';

Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 50),
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              movie.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.white),
                            ),
                          ),
                          Text(
                            "Rating: ${movie.imdbRating} / 10",
                            style: mainTextStyle(),
                          )
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Realeased: ${movie.released}",
                          style: mainTextStyle(),
                        ),
                        Text(
                          movie.rated,
                          style: mainTextStyle(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                MovieListViewDetail(movieName: movie.title, movie: movie),
          ),
        ),
      },
    );
  }
TextStyle mainTextStyle() {
    return TextStyle(
      color: Colors.grey,
      fontSize: 15.0,
    );
  }


