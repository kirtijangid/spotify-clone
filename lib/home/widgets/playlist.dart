import 'package:flutter/material.dart';
import 'package:spotify_clone/data%20.dart';
import 'package:spotify_clone/utils/audio.dart';

class PlayLists extends StatelessWidget {
  const PlayLists({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2.5),
        children: Data().playList.map((val) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AudioPlayerPro(
                    audioURL: val['audio'].toString(),
                    image: val['image'].toString(),
                    name: val['name'].toString(),
                  );
                }),
              );
            },
            child: Card(
              color: const Color.fromARGB(255, 85, 84, 84),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(val['image'].toString()),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        val['name'].toString(),
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList());
  }
}
