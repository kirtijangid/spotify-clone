import 'package:flutter/material.dart';
import 'package:spotify_clone/bottomNavigation.dart';
import 'package:spotify_clone/library/widgets/header.dart';
import 'package:spotify_clone/library/widgets/roundedCards.dart';


class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: ListView(
        children: const [
          Header(),
          Row(
            children:[
          RoundedCards(text: 'Playlists'),
          RoundedCards(text: 'Podcasts & shows'),
          RoundedCards(text: 'Artists'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(2),
    );
  }
}