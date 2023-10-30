import 'package:flutter/material.dart';
import 'package:spotify_clone/bottomNavigation.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(137, 24, 24, 24),
        body: ListView(
          children: const [
            Text('Premium',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            )
        ]),
      bottomNavigationBar: BottomBar(3),
     ),
      );
  }
}