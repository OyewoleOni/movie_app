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
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return Stack(children: [
              movieCard(movieList[index], context),
              Positioned(
                top: 10.0,
                child: movieImage(movieList[index].images[0]),
              ),
            ]);
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

  Widget movieImage(String imageUrl) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(
              imageUrl ??
                  'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0NzAxODAyMl5BMl5BanBnXkFtZTgwMDg0MzQ4MDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg',
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
