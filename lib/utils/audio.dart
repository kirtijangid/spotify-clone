// import 'package:audioplayers/audioplayers.dart';
// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:spotify_clone/utils/notify.dart';

// class AudioPlayerPro extends StatefulWidget {
//   AudioPlayerPro(
//       {required this.audioURL, required this.image, required this.name});

//   final String audioURL;
//   final String image;
//   final String name;

//   @override
//   State<AudioPlayerPro> createState() => _AudioPlayerProState();
// }

// class _AudioPlayerProState extends State<AudioPlayerPro> {
//   Notify notify = Get.find();
//   bool isPlayPressed = false;
//   Duration _duration = Duration();
//   Duration _position = Duration();

//   static AudioPlayer advancedPlayer = AudioPlayer();

//   @override
//   void initState() {
//     initPlayer();
//     super.initState();
//   }

//   void dispose() {
//     super.dispose();
//   }

//   void initPlayer() {
//     advancedPlayer = AudioPlayer();
//     advancedPlayer.onDurationChanged.listen((d) {
//       setState(() {
//         _duration = d;
//       });
//     });

//     advancedPlayer.onPositionChanged.listen((p) {
//       setState(() {
//         _duration = p;
//       });
//     });
//   }

//   void seekToSecond(second) {
//     Duration newDuration = Duration(seconds: second);
//     advancedPlayer.seek(newDuration);
//   }

//   double setChanged() {
//     Duration newDuration = Duration(seconds: 0);
//     advancedPlayer.seek(newDuration);
//     return 0.0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     WidgetsFlutterBinding.ensureInitialized();
//     SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//       ),
//     );
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 53, 52, 52),
//       body: Container(
//         padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.brown, Color.fromARGB(221, 20, 20, 20)],
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Icon(
//                     LineIcons.angleDown,
//                     color: Colors.white,
//                     size: 25,
//                   ),
//                   Column(
//                     children: [
//                       const Text(
//                         'PLAYING FROM ALBUM',
//                         style: TextStyle(
//                             letterSpacing: 1,
//                             fontSize: 14,
//                             color: Colors.white),
//                       ),
//                       Text(
//                         widget.name,
//                         style: const TextStyle(
//                             letterSpacing: 1,
//                             fontSize: 15,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Librefranklin'),
//                       ),
//                     ],
//                   ),
//                   const Icon(
//                     LineIcons.verticalEllipsis,
//                     color: Colors.white,
//                     size: 25,
//                   ),
//                 ],
//               ),
//               SizedBox(height: 100),
//               Container(
//                 width: 325,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.asset(widget.image),
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.only(left: 25, right: 25, top: 30),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           widget.name,
//                           style: const TextStyle(
//                               wordSpacing: 0.2,
//                               fontSize: 25,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontFamily: 'ProximaNova'),
//                         ),
//                         const Text(
//                           'Classics',
//                           style: TextStyle(
//                               letterSpacing: 0.1,
//                               fontSize: 18,
//                               color: Color.fromARGB(255, 185, 183, 183),
//                               fontWeight: FontWeight.bold,
//                               fontFamily: 'ProximaNovaThin'),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         notify.isHeartPressed.value =
//                             notify.isHeartPressed.value ? false : true;
//                       },
//                       icon: Obx(
//                         () => (notify.isHeartPressed.value)
//                             ? Icon(
//                                 Icons.favorite,
//                                 color: Colors.pink,
//                                 size: 25,
//                               )
//                             : Icon(
//                                 LineIcons.heart,
//                                 color: Colors.white,
//                                 size: 25,
//                               ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Stack(
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     child: SliderTheme(
//                       data: SliderTheme.of(context).copyWith(
//                           activeTickMarkColor: Colors.white,
//                           inactiveTrackColor: Colors.grey[600],
//                           activeTrackColor: Colors.white,
//                           thumbColor: Colors.white,
//                           trackHeight: 3,
//                           thumbShape:
//                               RoundSliderThumbShape(enabledThumbRadius: 5)),
//                       child: Slider(
//                         value: (_position.inSeconds.toDouble() !=
//                                 _duration.inSeconds.toDouble())
//                             ? _position.inSeconds.toDouble()
//                             : setChanged(),
//                         min: 0,
//                         max: _duration.inSeconds.toDouble(),
//                         onChanged: (double value) => {
//                           setState(() {
//                             seekToSecond(value.toInt());
//                             value = value;
//                           }),
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 25, right: 25),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "${_position.inMinutes.toInt()}:${(_position.inSeconds % 60).toString().padLeft(2, "0")}",
//                       style: TextStyle(
//                           letterSpacing: 0.1,
//                           fontSize: 14,
//                           color: Color.fromARGB(255, 185, 183, 183),
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'ProximaNovaThin'),
//                     ),
//                     Text(
//                       "${_duration.inMinutes.toInt()}:${(_duration.inSeconds % 60).toString().padLeft(2, "0")}",
//                       style: TextStyle(
//                           letterSpacing: 0.1,
//                           fontSize: 14,
//                           color: Color.fromARGB(255, 185, 183, 183),
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'ProximaNovaThin'),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.only(left: 22, right: 22),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Icon(
//                       LineIcons.random,
//                       color: Colors.grey,
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Icon(
//                         Icons.skip_previous,
//                         color: Colors.white,
//                         size: 40,
//                       ),
//                     ),
//                     Container(
//                       height: 90,
//                       width: 90,
//                       child: Center(
//                         child: IconButton(
//                           iconSize: 70,
//                           alignment: Alignment.center,
//                           onPressed: () {
//                             notify.isIconPlay.value =
//                                 notify.isIconPlay.value ? false : true;

//                             if (notify.isIconPlay.value) {
//                               advancedPlayer.play(
//                                 UrlSource(widget.audioURL),
//                               );
//                             } else {
//                               advancedPlayer.pause();
//                             }
//                             AwesomeNotifications().createNotification(
//                                 content: NotificationContent(
//                                   id: 123,
//                                   channelKey: 'basic',
//                                   title: 'Now Playing - ${widget.name}',
//                                   autoDismissible: false,
//                                   displayOnBackground: true,
//                                 ),
//                                 actionButtons: [
//                                   NotificationActionButton(
//                                     key: 'play',
//                                     label: 'play',
//                                     autoDismissible: false,
//                                     showInCompactView: true,
//                                     // buttonType:
//                                     //     ActionButtonType.KeepOnTop,
//                                   ),
//                                   NotificationActionButton(
//                                     key: 'pause',
//                                     label: 'pause',
//                                     autoDismissible: false,
//                                     showInCompactView: true,
//                                     // buttonType:
//                                     //     ActionButtonType.KeepOnTop,
//                                   ),
//                                   NotificationActionButton(
//                                     key: 'stop',
//                                     label: 'stop',
//                                     autoDismissible: false,
//                                     showInCompactView: true,
//                                     // buttonType:
//                                     //     ActionButtonType.KeepOnTop,
//                                   ),
//                                 ]);
                            
//                             // final myStream = AwesomeNotifications()
//                             //     .actionStream
//                             //     .asBroadcastString();
//                             // myStream.listen((action) {
//                             //   if (action.buttonKeyPressed == 'play') {
//                             //     advancedPlayer.play(UrlSource(widget.audioURL));
//                             //     notify.setIconPlay(true);
//                             //   } else if (action.buttonKeyPressed == 'pause') {
//                             //     advancedPlayer.pause();
//                             //     notify.setIconPlay(false);
//                             //   } else if (action.buttonKeyPressed == 'stop') {
//                             //     advancedPlayer.stop();
//                             //     notify.setIconPlay(true);
//                             //   }
//                             // });
//                           },
//                           icon: Obx(
//                             () => notify.isIconPlay.value
//                                 ? Icon(
//                                     Icons.pause_circle_filled,
//                                     color: Colors.white,
//                                   )
//                                 : Icon(
//                                     Icons.play_circle_filled,
//                                     color: Colors.white,
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Icon(
//                         Icons.skip_next,
//                         color: Colors.white,
//                         size: 40,
//                       ),
//                     ),
//                     Icon(
//                       Icons.repeat,
//                       color: Colors.grey,
//                       //size: 70,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.only(left: 22, right: 22),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.speaker_group_outlined,
//                       color: Colors.grey,
//                     ),
//                     Spacer(
//                       flex: 5,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Share.share('https://spotify/songid-3291931');
//                       },
//                       child: Icon(
//                         Icons.share_outlined,
//                         color: Colors.grey,
//                         size: 30,
//                       ),
//                     ),
//                     Spacer(),
//                     Icon(
//                       Icons.line_weight_sharp,
//                       color: Colors.grey,
//                       //size: 70,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
