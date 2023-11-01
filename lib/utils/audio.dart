import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';

class AudioPlayerPro extends StatefulWidget {
  AudioPlayerPro(
      {required this.audioURL, required this.image, required this.name});

  final String audioURL;
  final String image;
  final String name;

  @override
  State<AudioPlayerPro> createState() => _AudioPlayerProState();
}

class _AudioPlayerProState extends State<AudioPlayerPro> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 53, 52, 52),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.brown, Colors.black87])),
        child: const Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    LineIcons.angleDown,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
