import 'package:flutter/material.dart';
import 'package:spotify_clone/bottomNavigation.dart';
import 'package:spotify_clone/library/widgets/header.dart';


class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
        ],
      ),
      bottomNavigationBar: BottomBar(2),
    );
  }
}