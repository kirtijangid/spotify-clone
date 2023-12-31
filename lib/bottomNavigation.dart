import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/home/homepage.dart';

class BottomBar extends StatelessWidget {
  int _currentIndex;
  BottomBar(this._currentIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromARGB(255, 44, 44, 44),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.transparent,
            Colors.transparent,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            if (val == 0) {
              Navigator.popAndPushNamed(context, 'home');
            } else if (val == 1) {
              Navigator.popAndPushNamed(context, '/search');
            }
            else if (val == 2) {
              Navigator.popAndPushNamed(context, '/library');
            }
             else if (val == 3) {
              Navigator.popAndPushNamed(context, '/premium');
            }
          },
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_add,
                size: 30,
              ),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_music,
                size: 30,
              ),
              label: 'Premium',
            ),
          ],
        ),
      ),
    );
  }
}
