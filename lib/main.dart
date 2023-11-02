//import 'dart:js';

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

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Notify notify = Get.put(Notify());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/search': (context) => const Search(),
        '/library': (context) => const Library(),
        '/premium': (context) => const Premium(),
      },
    );
  }
}
