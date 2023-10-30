import 'package:flutter/material.dart';
import 'package:spotify_clone/bottomNavigation.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: const [
            Text('hlo')
        ]),
      bottomNavigationBar: BottomBar(3),
    );
  }
}