//import 'dart:js';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/home/homepage.dart';
import 'package:spotify_clone/library/library.dart';
import 'package:spotify_clone/premium/premium.dart';
import 'package:spotify_clone/search/search.dart';
import 'package:spotify_clone/utils/notify.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'basic',
        channelName: 'basic notification',
        channelDescription: 'notifications for playing/pausing audio',
        importance: NotificationImportance.High,
        channelShowBadge: true,
        
        ),
  ]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Notify notify = Get.put(Notify());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/search': (context) => Search(),
        '/library': (context) => Library(),
        '/premium': (context) => Premium(),
      },
    );
  }
}
