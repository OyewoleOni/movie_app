import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/ui/details.dart';

class MovieListView extends StatelessWidget {
  final List<Movie> movieList = Movie.getMovies();

  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "I Am Legend",
    "300",
    "The Wolf of Wall Street",
    "Game of Thrones",
    "Vikings",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return movieCard(movieList[index], context);
            // return Card(
            //   elevation: 10,
            //   color: Colors.white,
            //   child: ListTile(
            //     leading: CircleAvatar(
            //       child: Container(
            //         width: 200,
            //         height: 200,
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: NetworkImage(
            //                   movieList.elementAt(index).images[0],
            //                 ),
            //                 fit: BoxFit.cover),
            //             // color: Colors.redAccent,
            //             borderRadius: BorderRadius.circular(12)),
            //         child: null,
            //       ),
            //     ),
            //     trailing: Text("..."),
            //     title: Text(
            //       movieList.elementAt(index).title,
            //     ),
            //     subtitle: Text(movieList[0].title),
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => MovieListViewDetail(
            //             movieName: movieList.elementAt(index).title,
            //             movie: this.movieList.elementAt(index),
            //           ),
            //         ),
            //       );
            //     },
            //     //onTap: () => debugPrint("Movie name: ${movies.elementAt(index)}"),
            //   ),
            // );
          }),
    );
  }

  //crearting custom widget
  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(movie.title),
                        Text("Rating: ${movie.imdbRating} / 10")
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Realeased: ${movie.released}"),
                      Text(movie.rated),
                    ],
                  )
                ],
              ),
            )),
      ),
      onTap: () => debugPrint(movie.title),
    );
  }
}
