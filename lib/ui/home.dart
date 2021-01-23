import 'package:flutter/material.dart';
import 'package:movie_app/ui/details.dart';

// import 'details.dart';


class MovieListView extends StatelessWidget {
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
          itemCount: movies.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return Card(
              elevation: 10,
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.redAccent,
                    //   borderRadius: BorderRadius.circular(12)
                    // ),
                    child: Text("M"),
                  ),
                ),
                trailing: Text("..."),
                title: Text(
                  movies.elementAt(index),
                ),
                subtitle: Text("sub"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MovieListViewDetail()));
                },
                //onTap: () => debugPrint("Movie name: ${movies.elementAt(index)}"),
              ),
            );
          }),
    );
  }
}

