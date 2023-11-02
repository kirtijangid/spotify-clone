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
            colors: [Colors.brown, Color.fromARGB(221, 20, 20, 20)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    LineIcons.angleDown,
                    color: Colors.white,
                    size: 25,
                  ),
                  Column(
                    children: [
                      const Text(
                        'PLAYING FROM ALBUM',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      Text(
                        widget.name,
                        style: const TextStyle(
                            letterSpacing: 1,
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Librefranklin'),
                      ),
                    ],
                  ),
                  const Icon(
                    LineIcons.verticalEllipsis,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(height: 100),
              Container(
                width: 325,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(widget.image),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 25, right: 25, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                              wordSpacing: 0.2,
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ProximaNova'),
                        ),
                        const Text(
                          'Classics',
                          style: TextStyle(
                              letterSpacing: 0.1,
                              fontSize: 18,
                              color: Color.fromARGB(255, 185, 183, 183),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ProximaNovaThin'),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        LineIcons.heart,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTickMarkColor: Colors.white,
                          inactiveTrackColor: Colors.grey[600],
                          activeTrackColor: Colors.white,
                          thumbColor: Colors.white,
                          trackHeight: 3,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 5)),
                      child: Slider(
                        value: 0,
                        onChanged: (value) => {},
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0.00',
                      style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 14,
                          color: Color.fromARGB(255, 185, 183, 183),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProximaNovaThin'),
                    ),
                    Text(
                      '0.00',
                      style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 14,
                          color: Color.fromARGB(255, 185, 183, 183),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProximaNovaThin'),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      LineIcons.random,
                      color: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      child: Center(
                        child: IconButton(
                          iconSize: 70,
                          alignment: Alignment.center,
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_filled,
                            color: Colors.white,
                            
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Icon(
                        Icons.repeat,
                        color: Colors.grey,
                        //size: 70,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
