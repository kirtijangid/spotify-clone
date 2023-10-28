import 'package:flutter/material.dart';
import 'package:spotify_clone/search/widgets/tiles.dart';

class TopGenre extends StatelessWidget {
  const TopGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Explore your top genres',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'LibreFranklin',
          fontWeight: FontWeight.bold,
        ),
        ),
        Tiles(),
      ],
    );
  }
}