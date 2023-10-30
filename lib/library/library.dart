import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

import 'package:spotify_clone/bottomNavigation.dart';
import 'package:spotify_clone/data%20.dart';
import 'package:spotify_clone/library/widgets/header.dart';
import 'package:spotify_clone/library/widgets/roundedCards.dart';
import 'package:spotify_clone/library/widgets/tiles.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: ListView(
        children: [
          Header(),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              RoundedCards(text: 'Playlists'),
              SizedBox(
                width: 10,
              ),
              RoundedCards(text: 'Podcasts & shows'),
              SizedBox(
                width: 10,
              ),
              RoundedCards(text: 'Artists'),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Recently Played',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ],
            ),
          ),
          ...Data().library.map((val) {
            return GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage(val['image'].toString()),
                radius: 30,
                shape: val['shape'] as dynamic,
              ),
              title: Text(
                val['name'].toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17),
              ),
              subTitle: Text(
                val['name'].toString(),
                style: const TextStyle(
                    color: Color.fromARGB(255, 211, 208, 208), fontSize: 14),
              ),
            );
          }).toList(),
          TilesLibrary(title: 'Add Artists', shape: GFAvatarShape.circle),
          TilesLibrary(
              title: 'Add Podcasts & Shows', shape: GFAvatarShape.square),
        ],
      ),
      bottomNavigationBar: BottomBar(2),
    );
  }
}
