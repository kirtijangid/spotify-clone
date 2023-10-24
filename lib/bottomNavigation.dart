import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.amber,
      ), child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.transparent,
          Colors.transparent
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {},
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30,),
              label: 'Home',
              )
          ],
        ),
      ),
    );
  }
}