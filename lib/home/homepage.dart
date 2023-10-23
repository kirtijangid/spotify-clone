import 'package:flutter/material.dart';
import 'package:spotify_clone/home/widgets/headerAction.dart';
import 'package:spotify_clone/home/widgets/playlist.dart';
import 'package:spotify_clone/home/widgets/recentlyPlaylist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 29, 28, 28),
              Color.fromARGB(255, 77, 76, 76)
            ],
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  'Good evening',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                HeaderActions()
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
             child: PlayLists(),
            ),
            const SizedBox(
              height: 20,
            ),
            RecentlyPlayed(),
            //JumpIn(),
          ],
        ),
      ),
    );
  }
}
