import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:spotify_clone/data%20.dart';
import 'package:spotify_clone/utils/audio.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.only(left: 10),
        child: const Text(
          'Recently Played',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'LibreFranklin',
            color: Colors.white,
          ),
        ),
      ),
      Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Data().recentlyPlayed.length,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Column(
                  crossAxisAlignment: Data().recentlyPlayed[index]['alignment']
                      as CrossAxisAlignment,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return AudioPlayerPro(
                              audioURL: Data()
                                  .recentlyPlayed[index]['audio']
                                  .toString(),
                              image: Data()
                                  .recentlyPlayed[index]['image']
                                  .toString(),
                              name: Data()
                                  .recentlyPlayed[index]['name']
                                  .toString(),
                            );
                          }),
                        );
                      },
                      child: Container(
                        child: GFAvatar(
                          shape: Data().recentlyPlayed[index]['shape']
                              as GFAvatarShape,
                          backgroundImage: AssetImage(
                            Data().recentlyPlayed[index]['image'].toString(),
                          ),
                          radius: 70,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        Data().recentlyPlayed[index]['name'].toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    ]);
  }
}
