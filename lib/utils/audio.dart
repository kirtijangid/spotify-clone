import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AudioPlayerPro extends StatefulWidget {
  AudioPlayerPro({required this.audioURL, required this.image, required this.name});
   
  final String audioURL;
  final String image;
  final String name;


  @override
  State<AudioPlayerPro> createState() => _AudioPlayerProState();
}

class _AudioPlayerProState extends State<AudioPlayerPro> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(136, 53, 52, 52),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 40),
      child: Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(LineIcons.angleDown,
              color: Colors.white,
              size: 25,)
            ],
            
          )
        ],
      ),
      ),
      ),
      );
  }
}
