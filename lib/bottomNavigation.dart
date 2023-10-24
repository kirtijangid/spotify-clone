import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  //const BottomNavigation({super.key});

  int _currentIndex;
  BottomNavigation(this._currentIndex);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromARGB(255, 44, 44, 44),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            if (val == 0) {
              Navigator.of(context).popAndPushNamed('/');
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
                Icons.workspace_premium,
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
