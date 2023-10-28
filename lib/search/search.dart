import 'package:flutter/material.dart';
import 'package:spotify_clone/bottomNavigation.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
      body: Container(
        padding: EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
        child: ListView(
          children: const [
            Text(
              'Search',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Librefranklin',
              ),
            ),
            //SearchWidget(),
            //TopGenre(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(1),
    );
  }
}
