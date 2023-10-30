import 'package:flutter/material.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';

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
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: something.map((imageUrl) {
          return Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(imageUrl, fit: BoxFit.cover,),
          ),
          );
        }).toList(),
      ),
    );
  }
}
