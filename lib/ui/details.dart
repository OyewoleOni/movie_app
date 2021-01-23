import 'package:flutter/material.dart';

class MovieListViewDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Container(
        child: RaisedButton(
          onPressed: (){
            
          },
          child: Text("Go Back"),
        ),
      ),
    );
  }
}
