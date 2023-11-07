import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:spotify_clone/data%20.dart';
import 'package:spotify_clone/utils/audio.dart';


class JumpIn extends StatelessWidget {
  const JumpIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10,
          left: 10),
          child: const Text(
            'Jump back in',
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
            itemCount: Data().jumpIn.length,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Column(
                  crossAxisAlignment: Data().jumpIn[index]['alignment']
                      as CrossAxisAlignment,
                  children: [
                    InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) {
                      //       return AudioPlayerPro(
                      //         audioURL: Data()
                      //             .jumpIn[index]['audio']
                      //             .toString(),
                      //         image: Data()
                      //             .jumpIn[index]['image']
                      //             .toString(),
                      //         name: Data()
                      //             .jumpIn[index]['name']
                      //             .toString(),
                      //       );
                      //     }),
                      //   );
                      // },
                      child: Container(
                        child: GFAvatar(
                          shape: Data().jumpIn[index]['shape']
                              as GFAvatarShape,
                          backgroundImage: AssetImage(
                              Data().jumpIn[index]['image'].toString(),
                              ),
                              radius: 70,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Align(alignment: Alignment.center,
                    child: Text(
                      Data().jumpIn[index]['name'].toString(),
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
