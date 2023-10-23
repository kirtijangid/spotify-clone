import 'package:flutter/material.dart';
import 'package:spotify_clone/data%20.dart';

class PlayLists extends StatelessWidget {
  const PlayLists({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3),
        children: Data().playList.map((val) {
          return InkWell(
            child: Card(
              color: const Color.fromARGB(255, 99, 98, 97),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/liked.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(child: Text('Liked Songs',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),))
                  ],
                ),
              ),
            ),
          );
        }).toList());
  }
}
