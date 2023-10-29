import 'package:flutter/material.dart';
import 'package:spotify_clone/library/widgets/header.dart';


class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header(),
        ],
      ),
    );
  }
}