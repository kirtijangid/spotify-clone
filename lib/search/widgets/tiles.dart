import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  //const Tiles({super.key});
   List<String> something;
  Tiles({ required this.something});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 16 / 9,
        ),
        children: something.map((imageUrl) {
          return Container(
            child: Image.asset(imageUrl, fit: BoxFit.cover,),
          );
        }).toList(),
      ),
    );
  }
}
