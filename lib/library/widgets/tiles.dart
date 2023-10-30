import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TilesLibrary extends StatelessWidget {
  TilesLibrary({Key? key, required this.title, required this.shape});
  String title;
  GFAvatarShape shape;

  @override
  Widget build(BuildContext context) {
    return GFListTile(
      avatar: GFAvatar(
        radius: 28,
        backgroundColor: const Color.fromARGB(255, 59, 59, 59),
        shape: shape,
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.white54,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
         fontSize: 16),
      ),
    );
  }
}
