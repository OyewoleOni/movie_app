import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

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
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Go Back ${this.movie.title}"),
          ),
        ),
      ),
    );
  }
}
