import 'package:flutter/material.dart';
import 'package:spotify_clone/data%20.dart';
import 'package:spotify_clone/search/widgets/tiles.dart';

class TopGenre extends StatelessWidget {
  const TopGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text('Explore your top genres',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 10,),
        Tiles(something: Data().genres),
        SizedBox(height: 10,),
        Text('Browse All',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 10,),
        Tiles(something: Data().browseall),
      ],
    );
  }
}